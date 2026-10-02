// Independent finite certificate checker. Roots are lifted by Euler's theorem
// directly modulo p^2, not by the generator's Hensel formula.
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

using U64=std::uint64_t;
using U128=__uint128_t;

void require(bool condition, const std::string& message) {
    if (!condition) throw std::runtime_error(message);
}

U64 square_root(U64 n) {
    U64 x=static_cast<U64>(std::sqrt(static_cast<long double>(n)));
    while ((x+1)*(x+1)<=n) ++x;
    while (x*x>n) --x;
    return x;
}

std::vector<int> make_primes(int n) {
    std::vector<bool> composite(static_cast<std::size_t>(n)+1);
    for (int p=2;U64(p)*p<=U64(n);++p)
        if (!composite[p])
            for (int k=p*p;k<=n;k+=p) composite[k]=true;
    std::vector<int> result;
    for (int p=2;p<=n;++p) if (!composite[p]) result.push_back(p);
    return result;
}

U64 modular_power(U64 a,U64 e,U64 modulus) {
    U64 answer=1;
    while (e) {
        if (e%2) answer=static_cast<U64>(U128(answer)*a%modulus);
        a=static_cast<U64>(U128(a)*a%modulus);
        e/=2;
    }
    return answer;
}

bool squarefree(U64 value, const std::vector<int>& primes) {
    const U64 original=value;
    // Use the original cube-root bound, rather than a changing loop bound.
    for (U64 p:primes) {
        if (p*p*p>original) break;
        if (value%(p*p)==0) return false;
        if (value%p==0) value/=p;
    }
    const U64 r=square_root(value);
    return value==1 || r*r!=value;
}

bool squarefree_reference(U64 value, const std::vector<int>& primes) {
    for (U64 p:primes) {
        if (p*p>value) break;
        if (value%(p*p)==0) return false;
    }
    return true;
}

std::vector<bool> diagonal_vertices(int n, const std::vector<int>& primes) {
    std::vector<bool> result(static_cast<std::size_t>(n)+1);
    for (int prime:primes) {
        if (prime%4!=1) continue;
        const U64 p=static_cast<U64>(prime), q=p*p;
        U64 z=2;
        while (modular_power(z,(p-1)/2,p)!=p-1) ++z;
        const U64 root=modular_power(z,p*(p-1)/4,q);
        require(static_cast<U64>(U128(root)*root%q)==q-1,"root construction failed");
        for (U64 first:{root,q-root})
            for (U64 a=first;a<=U64(n);a+=q) result[a]=true;
    }
    return result;
}

void self_test() {
    const auto primes=make_primes(10000);
    for (U64 value=1;value<=1000000;++value)
        require(squarefree(value,primes)==squarefree_reference(value,primes),"squarefree exhaustive check failed");
    const auto eligible=diagonal_vertices(10000,primes);
    for (int a=1;a<=10000;++a)
        require(eligible[a]!=squarefree_reference(U64(a)*a+1,primes),"independent diagonal check failed");
    // Larger squared-prime factors and cube-bound boundary examples.
    for (U64 p:primes)
        for (U64 m:{1ULL,2ULL,7ULL,101ULL})
            require(!squarefree(p*p*m,primes),"square-factor example missed");
    std::cout << "PASS: 1000000 squarefree decisions, 10000 diagonal vertices, and large-square examples\n";
}

int main(int argc,char** argv) {
    try {
        require(argc==2,"usage: check_certificate_fast CERTIFICATE | --self-test");
        if (std::string(argv[1])=="--self-test") {self_test();return 0;}
        const auto start=std::chrono::steady_clock::now();
        std::ifstream stream(argv[1]);
        require(bool(stream),"cannot open certificate");
        std::string header;
        int n=0;
        require(bool(stream>>header>>n),"missing header");
        require(header=="JSP848-COLOR-v1" && 1<=n && n<=(1<<28),"bad header");
        const auto primes=make_primes(n);
        const auto eligible=diagonal_vertices(n,primes);
        std::vector<int> assigned(static_cast<std::size_t>(n)+1,-1);
        std::vector<std::vector<int>> classes;
        U64 vertices=0,moves=0,pairs=0;
        for (int expected=1;expected<=n;++expected) {
            if (!eligible[expected]) continue;
            int event=0,count=0;
            require(bool(stream>>event>>count),"missing event at "+std::to_string(expected));
            require(event==expected && count>=1 && count<=expected,"bad event at "+std::to_string(expected));
            const int bound=(expected+18)/25;
            classes.resize(bound);
            std::vector<std::pair<int,int>> updates;
            std::vector<int> changed;
            updates.reserve(static_cast<std::size_t>(count));
            bool includes_new=false;
            for (int j=0;j<count;++j) {
                int vertex=0,color=0;
                require(bool(stream>>vertex>>color),"incomplete update");
                require(vertex>=1 && vertex<=expected && color>=0 && color<bound,"invalid update");
                require(vertex==expected || assigned[vertex]>=0,"unknown old vertex");
                includes_new|=vertex==expected;
                updates.emplace_back(vertex,color);
                changed.push_back(vertex);
            }
            require(includes_new,"new vertex omitted");
            std::sort(changed.begin(),changed.end());
            require(std::adjacent_find(changed.begin(),changed.end())==changed.end(),"repeated update");
            for (auto [vertex,color]:updates) {
                (void)color;
                if (assigned[vertex]<0) continue;
                auto& members=classes[assigned[vertex]];
                const auto old=std::find(members.begin(),members.end(),vertex);
                require(old!=members.end(),"membership inconsistency");
                members.erase(old);
                ++moves;
            }
            for (auto [vertex,color]:updates) {
                for (int other:classes[color]) {
                    require(squarefree(U64(vertex)*other+1,primes),"invalid same-color pair "+std::to_string(vertex)+","+std::to_string(other));
                    ++pairs;
                }
                classes[color].push_back(vertex);
                assigned[vertex]=color;
            }
            ++vertices;
            if (vertices%1000000==0)
                std::cerr << "CHECKED N=" << expected << " vertices=" << vertices << " pairs=" << pairs << '\n';
        }
        std::string end,extra;
        U64 reported=0;
        require(bool(stream>>end>>reported) && end=="END" && reported==vertices,"missing or incorrect END");
        require(!(stream>>extra),"trailing content");
        const auto seconds=std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count();
        std::cout << "{\"status\":\"VERIFIED_FINITE_RANGE\",\"minimum_N\":1,\"maximum_N\":" << n
                  << ",\"eligible_vertices\":" << vertices << ",\"recolorings\":" << moves
                  << ",\"same_color_pairs_checked\":" << pairs << ",\"elapsed_seconds\":" << seconds << "}\n";
    } catch (const std::exception& error) {
        std::cerr << "REJECTED: " << error.what() << '\n';
        return 1;
    }
}
