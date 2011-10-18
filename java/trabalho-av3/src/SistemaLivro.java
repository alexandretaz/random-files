package av3;
import javax.swing.*;
 
/**
 * Write a description of class SistemaLivro here.
 * 
 * @author (Fernando Silva) 
 * @version (0.0.1)
 */
public class SistemaLivro
{
    public static void main (String[] args){
        Livro l = new Livro(1,"asdf","sdf","asdf"); 

        String input;
        int resposta;

        Livro[] vetor = new Livro[5];
        for (int i =0; i< 5; i++)
        {
            vetor[i] = new Livro(0, null, null, null);
        }

        do{
            input = JOptionPane.showInputDialog("Cadastro e Manutenção de Livros\n\n1. Cadastrar\n2. Pesquisar\n3. Alterar\n4. Excluir\n5. Imprimir\n6. Sair");
            resposta = Integer.parseInt(input);

            switch (resposta)
            {
                case 1:
                    if (isVetorCheio(vetor))
                    {
                        JOptionPane.showMessageDialog(null, "Banco de dados cheio :(");
                        break;
                    }
                    int i=0;
                    int codigo=0;
                    while(vetor[i].codigo != 0 )
                    {
                        if( i < 4)
                        {
                            i++;
                        }else{
                            break;    
                        } 
                    }

                    do{
                        codigo = (int)(Math.random()*1000);

                    }while(!isCodigoUnico(codigo, vetor));

                    System.out.println(codigo);
                    vetor[i].codigo = codigo;
                    vetor[i].title = JOptionPane.showInputDialog("título");
                    vetor[i].autor = JOptionPane.showInputDialog("autor");
                    vetor[i].genero = JOptionPane.showInputDialog("gênero");
                    System.out.println(vetor[i].title + vetor[i].autor + vetor[i].genero );
                    break;
                case 2:
                    for (int k =0; k< 5; k++)
                    {
                        System.out.println(vetor[k].codigo+ vetor[k].title + vetor[k].autor + vetor[k].genero );
                    }
                    break;
                default:
                    System.out.println("uo");
            }


            System.out.println(resposta);

        } while(resposta != 6 );
    }
    public static boolean isCodigoUnico(int codigo, Livro[] vetor)
    {
        boolean unico=true;
        for (int i=0; i<5;i++)
        {
            if(vetor[i].codigo == codigo)
                unico=false;
        }
        return unico;
    }
    public static boolean isVetorCheio(Livro[] vetor)
    {
        boolean cheio=true;
        for (int i=0; i<5;i++)
        {
            if(vetor[i].codigo == 0)
                cheio=false;

        }
        return cheio;
    }
}
