#include <bits/stdc++.h>
using namespace std;

const int N= 50;
int prime[N+1] = {0};

void sieve(){
    
  
    
     prime[0] = prime[1] = 1;
    
    for(int i =2; i*i <= N; i++){
        if(prime[i]) continue;
        for(int j = i*i; j <= N; j += i){
            prime[j] = 1;
        }
    }
    
    for(int i =2; i <= N; i++){
        if(!prime[i]) cout << i << " ";
    }
}



int main() {
    sieve();

}
