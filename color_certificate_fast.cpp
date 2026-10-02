// Exact arithmetic coloring constructor. Randomness selects search order only.
// Independent certificate checking, not successful search alone, is the proof.
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <random>
#include <stdexcept>
#include <utility>
#include <vector>

using U64 = std::uint64_t;

std::vector<int> primes_up_to(int n) {
    std::vector<bool> composite(static_cast<std::size_t>(n)+1);
    std::vector<int> primes;
    for (int p=2; p<=n; ++p) {
        if (composite[p]) continue;
        primes.push_back(p);
        if (U64(p)*p<=U64(n))
            for (int j=p*p; j<=n; j+=p) composite[j]=true;
    }
    return primes;
}

U64 power_mod(U64 x, U64 e, U64 m) {
    U64 result=1;
    while (e) {
        if (e&1) result=result*x%m;
        x=x*x%m;
        e>>=1;
    }
    return result;
}

std::vector<bool> eligible(int n, const std::vector<int>& primes) {
    std::vector<bool> result(static_cast<std::size_t>(n)+1);
    for (int p:primes) {
        if (p%4!=1) continue;
        U64 z=2;
        while (power_mod(z,(p-1)/2,p)!=U64(p-1)) ++z;
        U64 root=power_mod(z,(p-1)/4,p);
        const U64 inverse=power_mod(2*root%p,p-2,p);
        const U64 lift=(p-(root*root+1)/p%p)*inverse%p;
        const U64 square=U64(p)*p;
        root+=U64(p)*lift;
        for (U64 first:{root,square-root})
            for (U64 a=first; a<=U64(n); a+=square) result[a]=true;
    }
    return result;
}

bool nonsquarefree(U64 value, const std::vector<int>& primes) {
    for (U64 p:primes) {
        if (p*p*p>value) break;
        if (value%p==0) {
            value/=p;
            if (value%p==0) return true;
        }
    }
    U64 root=static_cast<U64>(std::sqrt(static_cast<long double>(value)));
    while ((root+1)*(root+1)<=value) ++root;
    while (root*root>value) --root;
    return root>1 && root*root==value;
}

class Coloring {
    const std::vector<int>& primes;
    std::vector<std::vector<int>> colors;
    std::mt19937 random{848701};
    std::vector<int> path;
    int free_base18=-1;
    U64 checks=0;

    int sole_conflict(int a, int c) {
        int conflict=-1;
        for (int b:colors[c]) {
            ++checks;
            if (!nonsquarefree(U64(a)*b+1,primes)) continue;
            if (b%25==7 || conflict!=-1) return -2;
            conflict=b;
        }
        return conflict;
    }

    void remove(int a, int c) {
        auto& members=colors[c];
        const auto position=std::find(members.begin(),members.end(),a);
        if (position==members.end()) throw std::runtime_error("internal missing member");
        members.erase(position);
    }

    bool try_color(int a, int c, int depth, std::vector<std::pair<int,int>>& changes) {
        const int conflict=sole_conflict(a,c);
        if (conflict==-2) return false;
        if (conflict==-1) {
            colors[c].push_back(a);
            changes.emplace_back(a,c);
            return true;
        }
        if (depth==0 || std::find(path.begin(),path.end(),conflict)!=path.end()) return false;
        remove(conflict,c);
        colors[c].push_back(a);
        path.push_back(a);
        const bool success=place(conflict,c,depth-1,changes);
        path.pop_back();
        if (success) {
            changes.emplace_back(a,c);
            return true;
        }
        remove(a,c);
        colors[c].push_back(conflict);
        return false;
    }

    bool place(int a, int forbidden, int depth, std::vector<std::pair<int,int>>& changes) {
        const int count=static_cast<int>(colors.size());
        if (a%25==18 && free_base18>=0 && free_base18!=forbidden
            && try_color(a,free_base18,depth,changes)) return true;
        // For small prefixes inspect every color, without heuristic omissions.
        if (count<=128) {
            for (int c=0;c<count;++c)
                if (c!=forbidden && try_color(a,c,depth,changes)) return true;
        } else {
            for (int attempt=0;attempt<64;++attempt) {
                const int c=static_cast<int>(random()%static_cast<unsigned>(count));
                if (c!=forbidden && try_color(a,c,depth,changes)) return true;
            }
        }
        return false;
    }

public:
    explicit Coloring(const std::vector<int>& p):primes(p) {}

    bool insert(int a, std::vector<std::pair<int,int>>& changes) {
        const int bound=(a+18)/25;
        if (a%25==7) {
            if (bound!=static_cast<int>(colors.size())+1) throw std::runtime_error("missing base vertex");
            colors.push_back({a});
            free_base18=bound-1;
            changes.emplace_back(a,bound-1);
            return true;
        }
        if (bound!=static_cast<int>(colors.size())) throw std::runtime_error("invalid color count");
        for (int depth=0;depth<=4;++depth) {
            if (place(a,-1,depth,changes)) {
                if (a%25==18) free_base18=-1;
                return true;
            }
        }
        return false;
    }

    U64 pair_checks() const {return checks;}
};

int main(int argc, char** argv) {
    try {
        if (argc!=3) throw std::runtime_error("usage: color_certificate_fast MAX_N OUTPUT");
        const int n=std::stoi(argv[1]);
        if (n<1 || n>(1<<28)) throw std::runtime_error("MAX_N must be in [1, 2^28]");
        const auto start=std::chrono::steady_clock::now();
        const auto primes=primes_up_to(n);
        const auto vertices=eligible(n,primes);
        Coloring coloring(primes);
        std::ofstream output(argv[2]);
        if (!output) throw std::runtime_error("cannot open output");
        output << "JSP848-COLOR-v1 " << n << '\n';
        U64 count=0, moves=0;
        for (int a=1;a<=n;++a) {
            if (!vertices[a]) continue;
            std::vector<std::pair<int,int>> changes;
            if (!coloring.insert(a,changes)) {
                std::cerr << "HEURISTIC_FAILED at " << a << "; no counterexample inferred\n";
                return 2;
            }
            ++count;
            moves+=changes.size()-1;
            output << a << ' ' << changes.size();
            for (auto [v,c]:changes) output << ' ' << v << ' ' << c;
            output << '\n';
            if (count%100000==0) {
                const auto seconds=std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count();
                std::cerr << "N=" << a << " vertices=" << count << " moves=" << moves
                          << " pair_checks=" << coloring.pair_checks() << " seconds=" << seconds << '\n';
            }
            if (!output) throw std::runtime_error("write failed");
        }
        output << "END " << count << '\n';
        output.close();
        if (!output) throw std::runtime_error("close failed");
        const auto seconds=std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count();
        std::cout << "CONSTRUCTED N=1.." << n << " vertices=" << count << " moves=" << moves
                  << " pair_checks=" << coloring.pair_checks() << " seconds=" << seconds << '\n';
    } catch (const std::exception& error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
