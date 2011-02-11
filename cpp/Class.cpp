#include <iostream>

using namespace std;

class Gato{
    public:
        // construtor
        Gato(int idade, int peso);
        // destrutor
        ~Gato();
        int GetIdade() const;
        void SetIdade(int idade);
        int GetPeso() const;
        void SetPeso(int pesop);
        void Miau() const;
    private:
        unsigned int Peso;
        unsigned int Idade;
};
Gato::Gato(int idade, int peso){
    Idade = idade;
    Peso = peso;
}
Gato::~Gato(){
}

int Gato::GetIdade() const{
    return Idade;
}
int Gato::GetPeso() const{
    return Peso;
}
void Gato::SetIdade(int idade){
    Idade = idade;
}
void Gato::SetPeso(int peso){
    Peso = peso;
}
void Gato::Miau() const{
    cout << "MIAU\n";
}

int main(){
    Gato Roger(5,3);
    cout << "Idade " << Roger.GetIdade() << "\n";
    cout << "Peso " << Roger.GetPeso() << "\n";
    Roger.SetIdade(35);
    Roger.SetPeso(234);
    cout << "Idade " << Roger.GetIdade() << "\n";
    cout << "Peso " << Roger.GetPeso() << "\n";
    Roger.Miau();
    return 0;
}
