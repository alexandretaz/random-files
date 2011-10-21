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

        String input, message;
        int resposta, i, codigo, resultado;

        Livro[] vetor = new Livro[5];
        for (i =0; i< 5; i++)
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
                    i=0;
                    codigo=0;
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
                    break;

                case 3:
                    codigo=0;
                    codigo = Integer.parseInt(JOptionPane.showInputDialog("Entre com o código do livro a ser alterado"));
                    resultado = pesquisa(codigo, vetor);
                    if (resultado >= 0)
                    {
                        input = null;
                        input = JOptionPane.showInputDialog("Alterar título de: " + vetor[resultado].title + " para:");
                        System.out.println(input);
                        if (input != null){
                            vetor[resultado].title = input;
                        }
                        input = null;
                        input = JOptionPane.showInputDialog("Alterar autor de: " + vetor[resultado].autor + " para:");
                        if (input != null){
                            vetor[resultado].autor = input;
                        }
                        input = null;
                        input = JOptionPane.showInputDialog("Alterar gênero de: " + vetor[resultado].genero + " para:");
                        if (input != null){
                            vetor[resultado].genero = input;
                        }
                    }else{
                        JOptionPane.showMessageDialog(null, "Não encontrado!");
                    }


                    break;

                case 4:
                    codigo=0;
                    codigo = Integer.parseInt(JOptionPane.showInputDialog("Entre com o código do livro a ser removido"));
                    resultado = pesquisa(codigo, vetor);
                    if (resultado >= 0){
                        codigo = Integer.parseInt(JOptionPane.showInputDialog("Vou remover o livro " + vetor[resultado].title + " de código: " + vetor[resultado].codigo + "\n Você esta certo disso ? ( [1] - sim // [2] - não)"));
                        if (codigo == 1){
                            vetor[resultado].codigo = 0;
                            vetor[resultado].title = null;
                            vetor[resultado].autor = null;
                            vetor[resultado].genero = null;
                            JOptionPane.showMessageDialog(null, "feito");
                        } else {
                            JOptionPane.showMessageDialog(null, "Ok, então ... nenhuma alteração feita");
                        }
                    }else{
                        JOptionPane.showMessageDialog(null, "Não encontrado!");
                    }

                    break;
                case 5:
                    message="";
                    for (int k =0; k< 5; k++)
                    {
                        message = message + "Código: "+ vetor[k].codigo + " Título: " + vetor[k].title + " Autor: " +  vetor[k].autor + " Gênero: " + vetor[k].genero + "\n";
                    }
                    JOptionPane.showMessageDialog(null, message);
                    break;

                default:
                    System.out.println("nenhuma entrada válida");
            }


            System.out.println(resposta);

        } while(resposta != 6 );
    }

    public static int pesquisa(int codigo, Livro[] vetor)
    {
        boolean encontrado=false;
        int i;
        for (i=0; i<5; i++)
        {
            if (codigo == vetor[i].codigo)
            {
                encontrado = true;
                break;
            }
        }
        if (encontrado)
        {
            return i;
        } else {
            return -1;
        }

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
