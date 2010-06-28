#include<stdio.h>

int fatorial(int valor){
    if ( valor == 1)
        return valor;
    else
        return valor*fatorial(valor - 1);
}

int main () {
    printf("%d",fatorial(5));
    


return 0;
}


