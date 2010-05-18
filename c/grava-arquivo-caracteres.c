#include<stdlib.h>
//#include<conio.h>
#include<stdio.h>
#include<termios.h>
#include<unistd.h>

int getche(){
	struct termios oldt, newt;
	int ch;
	tcgetattr(STDIN_FILENO,&oldt);
	newt = oldt;
	newt.c_lflag &= ~( ICANON | ECHO );
	tcsetattr( STDIN_FILENO, TCSANOW, &newt );
	ch = getchar();
	tcsetattr( STDIN_FILENO, TCSANOW, &oldt );
	return ch;
}	

int main(){ 
	FILE *fptr;
	char ch;
	fptr=fopen("/tmp/exemplo.txt","w");
	printf("Seu nome \n");
	while((ch = getche()) != '\n')
		fputc(ch,fptr);
	fclose(fptr);
	return 0;
}
	
