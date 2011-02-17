#include <iostream>

using namespace std;

int Add(int x, int y){
    cout << "Em add(), recebeu " << x << " e " << y << '\n';
    return x + y;
}

int main(){
    cout << "Estou em Main()\n";
    int a, b, c;
    cout << "Entre com dois num: ";
    cin >> a;
    cin >> b;
    cout << "\nChamando Add()\n";
    c = Add(a, b);
    cout << "\nDevolta para main().\n";
    cout << "c foi definido como " << c;
    cout << "\n Saindo ... \n\n";

    return 0;
}
