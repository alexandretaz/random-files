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
    cout  << "fuuu\n";
}

void Gato::Miau() const{
    cout << "MIAU\n";
}

int main(){
    Gato *pRoger = new Gato(5,3);
    cout << "Idade " << pRoger->GetIdade() << "\n";
    cout << "Peso " << pRoger->GetPeso() << "\n";
    pRoger->SetIdade(35);
    pRoger->SetPeso(234);
    cout << "Idade " << pRoger->GetIdade() << "\n";
    cout << "Peso " << pRoger->GetPeso() << "\n";
    delete pRoger;
    pRoger->Miau();
    return 0;
}
