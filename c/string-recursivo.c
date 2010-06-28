#include<stdio.h>
void invert(char *string){
    if (*string){
        invert(string+1);
        putchar(*string);
    }
}

int main (){
    char *string="ABCDE";
    int i;
    for (i=0;i<5;i++){
        printf("- %s \n",string+i);
        putchar(*string);
    }

    invert("Fernando");
    return 0;
}
