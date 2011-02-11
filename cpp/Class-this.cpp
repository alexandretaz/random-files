#include <iostream>

using namespace std;

class Gato{
    public:
        // construtor
        Gato(int idade, int peso);
        // destrutor
        ~Gato();
        int GetIdade() const { return this->Idade; }
        void SetIdade(int idade) { this->Idade = idade; }
        int GetPeso() const { return this->Peso;}
        void SetPeso(int peso) { this->Peso = peso;}
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
