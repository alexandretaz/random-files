#include <iostream>

using namespace std;

void Add_Multi(int x, int y, int *som, int *mul){
    *som = x + y; 
    *mul = x * y;
}

int main(){
    int a;
    int b;
    int res_soma = 0;
    int res_multi = 0;
    int * pres_soma = &res_soma;
    int * pres_multi = &res_multi;

    a = 3;
    b = 4;
   
    Add_Multi(a, b, pres_soma, pres_multi);
    cout << res_soma << " " << res_multi << "\n";
    return 0;
}
