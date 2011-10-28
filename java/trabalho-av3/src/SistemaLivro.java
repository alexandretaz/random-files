package av3;
import javax.swing.*;
 
/**
 * Classe de execução do  sistema de Livro
 * 
 * @author (Alexandre Andrade) 
 * @version (0.1)
 */

public class SistemaLivro
{
    
    public static void main (String[] args){

        String input, message;
        int resposta, i, codigo, resultado;

        Livro[] vetorLivro = new Livro[5];
        for (i =0; i< 5; i++)
        {
            vetorLivro[i] = new Livro(0, null, null, null);
        }

        do{
            input = JOptionPane.showInputDialog("Cadastro e Manutenção de Livros\n\n1. Cadastrar\n2. Pesquisar\n3. Alterar\n4. Excluir\n5. Imprimir\n6. Sair");
            resposta = Integer.parseInt(input);

            switch (resposta)
            {
                case 1:
                    SistemaLivro.insert(vetorLivro);
                break;
                case 2:
                    SistemaLivro.locate(vetorLivro);
                break;

                case 3:
                    SistemaLivro.update(vetorLivro);
                break;

                case 4:
                    SistemaLivro.delete(vetorLivro);
                break;
                case 5:
                    message="";
                    for (int k =0; k< 5; k++)
                    {
                        message = message + "Código: "+ vetorLivro[k].codigo + " Título: " + vetorLivro[k].titulo + " Autor: " +  vetorLivro[k].autor + " Gênero: " + vetorLivro[k].genero + "\n";
                    }
                    JOptionPane.showMessageDialog(null, message);
                    break;

                default:
                    System.out.println("nenhuma entrada válida");
            }


            System.out.println(resposta);

        } while(resposta != 6 );
    }

    public static int search(int codigo, Livro[] vetorLivro){
        boolean encontrado=false;
        int i;
        for (i=0; i<5; i++)
        {
            if (codigo == vetorLivro[i].codigo)
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
    public static Livro[] searchByTitle(String titulo, Livro[] vetorLivro){
        Livro[] listaLivro;
         int i,x;
         x=0;
        for (i=0; i<5; i++)
        {
            if (titulo.equals(vetorLivro[i].titulo))
            {
                x++;
            }
        }
        if(x>0){
            listaLivro = new Livro[x];
            x=0;
            for (i=0; i<5; i++)
            {
                if (titulo.equals(vetorLivro[i].titulo))
                {
                    listaLivro[x] = vetorLivro[i];
                    x++;
                    
                }
            }
        }
        else{
            listaLivro = new Livro[1];
            listaLivro[0] = new Livro(0,null,null,null);
        }
        return listaLivro;
        
    }
    public static Livro[] searchByGender(String genero, Livro[] vetorLivro){
        int i,x;
        Livro[] listaLivro;
        x=0;
        for (i=0; i<5; i++)
        {
            if (genero.equals(vetorLivro[i].genero))
            {
                x++;
            }
        }
        if(x>0){
            listaLivro = new Livro[x];
            x=0;
            for (i=0; i<5; i++)
            {
                if (genero.equals(vetorLivro[i].genero))
                {
                    listaLivro[x] = vetorLivro[i];
                    x++;
                    
                }
            }
        }
        else{
            listaLivro = new Livro[1];
            listaLivro[0] = new Livro(0,null,null,null);
        }
       return listaLivro;
    }
    public static Livro[] searchByAuthor(String autor, Livro[] vetorLivro){
        int i,x;
        Livro[] listaLivro;
        x=0;
        for (i=0; i<5; i++)
        {
            if (autor.equals(vetorLivro[i].autor))
            {
                x++;
            }
        }
        if(x>0){
            listaLivro = new Livro[x];
            x=0;
            for (i=0; i<5; i++)
            {
                if (autor.equals(vetorLivro[i].autor))
                {
                    listaLivro[x] = vetorLivro[i];
                    x++;
                    
                }
            }
        }
        else{
            listaLivro = new Livro[1];
            listaLivro[0] = new Livro(0,null,null,null);
        }
       return listaLivro;

    }
    public static boolean isCodeUnique(int codigo, Livro[] vetorLivro){
        boolean unico=true;
        for (int i=0; i<5;i++)
        {
            if(vetorLivro[i].codigo == codigo)
                unico=false;
        }
        return unico;
    }
    public static boolean isVectorFull(Livro[] vetorLivro){
        boolean cheio=true;
        for (int i=0; i<5;i++)
        {
            if(vetorLivro[i].codigo == 0)
                cheio=false;

        }
        return cheio;
    }
    public static void insert(Livro[] vetorLivro){
        int i, codigo;
        i=0;
        if (isVectorFull(vetorLivro))
                    {
                        JOptionPane.showMessageDialog(null, "Banco de dados cheio :(");
                        return;
                    }
        while(vetorLivro[i].codigo != 0 )
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
          }while(!isCodeUnique(codigo, vetorLivro));
                    System.out.println(codigo);
                    vetorLivro[i].codigo = codigo;
                    vetorLivro[i].titulo = JOptionPane.showInputDialog("título");
                    vetorLivro[i].autor = JOptionPane.showInputDialog("autor");
                    vetorLivro[i].genero = JOptionPane.showInputDialog("gênero");
                    JOptionPane.showMessageDialog(null, "Código do Livro "+codigo);
                    return;
    }
    public static void update(Livro[] vetorLivro){
        int codigo,resultado;
        String input; 
        codigo=0;
                    codigo = Integer.parseInt(JOptionPane.showInputDialog("Entre com o código do livro a ser alterado"));
                    resultado = search(codigo, vetorLivro);
                    if (resultado >= 0)
                    {
                        input = null;
                        input = JOptionPane.showInputDialog("Alterar título de: " + vetorLivro[resultado].titulo + " para:");
                        System.out.println(input);
                        if (input != null){
                            vetorLivro[resultado].titulo = input;
                        }
                        input = null;
                        input = JOptionPane.showInputDialog("Alterar autor de: " + vetorLivro[resultado].autor + " para:");
                        if (input != null){
                            vetorLivro[resultado].autor = input;
                        }
                        input = null;
                        input = JOptionPane.showInputDialog("Alterar gênero de: " + vetorLivro[resultado].genero + " para:");
                        if (input != null){
                            vetorLivro[resultado].genero = input;
                        }
                    }else{
                        JOptionPane.showMessageDialog(null, "Não encontrado!");
                    }
    }
    private static void delete(Livro[] vetorLivro){
        int codigo=0;
        String confirma= "N";
                    codigo = Integer.parseInt(JOptionPane.showInputDialog("Entre com o código do livro a ser removido"));
                    int resultado = search(codigo, vetorLivro);
                    if (resultado >= 0){
                        confirma = JOptionPane.showInputDialog("Deseja mesmo remover o livro?" + vetorLivro[resultado].titulo + " de código: " + vetorLivro[resultado].codigo + "\n Você esta certo disso ? ( [S] - sim // [N] - não)");
                        System.out.println(confirma);
                        if (confirma.equals("S") || confirma.equals("s"))
                            {
                                String titulo = vetorLivro[resultado].titulo ;
                            vetorLivro[resultado].codigo = 0;
                            vetorLivro[resultado].titulo = null;
                            vetorLivro[resultado].autor = null;
                            vetorLivro[resultado].genero = null;
                            JOptionPane.showMessageDialog(null, "Livro '"+titulo+"' apagado'");
                        } else {
                            JOptionPane.showMessageDialog(null, "Ok, então ... nenhuma alteração feita");
                        }
                    }else{
                        JOptionPane.showMessageDialog(null, "Livro não encontrado!");
                    }

    }
    private static void locate(Livro[] vetorLivro){
        String option,entrada, message; 
        message="";
        int pos,i;
        i=0;
        Livro[] listaLivro;
        listaLivro=new Livro[1];
        option = JOptionPane.showInputDialog("Localizar Livro por qual campo? \n\n1. Código\n2. Titulo\n3. Gênero\n4. Autor\n5. Sair");
        switch(Integer.parseInt(option)){
            case 1:
               entrada = JOptionPane.showInputDialog("Entre com o código do livro a ser buscado");
               pos=search(Integer.parseInt(entrada), vetorLivro);
               listaLivro = new Livro[1];
               listaLivro[0]=vetorLivro[pos];
            break;
            case 2:
               entrada = JOptionPane.showInputDialog("Entre com o título do livro a ser buscado");
               listaLivro = searchByTitle(entrada, vetorLivro);
            break;
            case 3:
               entrada = JOptionPane.showInputDialog("Entre com o gênero do livro a ser buscado");
               listaLivro = searchByTitle(entrada, vetorLivro);
            break;
            case 4:
               entrada = JOptionPane.showInputDialog("Entre com o autor do livro a ser buscado");
               listaLivro = searchByTitle(entrada, vetorLivro);               
            break;
            default:
                JOptionPane.showInputDialog("Saindo do Sistema de Busca");
            break;
        }
       
        if(0==listaLivro.length){
            message="Nenhum Livro foi encontrado!";
        }
        else{  
            for(i=0;i<listaLivro.length;i++){
             message +=  "Código: "+ listaLivro[i].codigo + " Título: " + listaLivro[i].titulo + " Autor: " +  listaLivro[i].autor + " Gênero: " + listaLivro[i].genero + "\n";
            }
        }
        JOptionPane.showMessageDialog(null, message);
        return;
    }
    private static Livro getLivroByCod(int cod, Livro[] vetorLivro){
       Livro livroFound;
       int pos;
        pos = SistemaLivro.search(cod,vetorLivro);
        livroFound = vetorLivro[pos];
        return livroFound;
    }
    private static Livro[] getLivroByTitle(String titulo, Livro[] vetorLivro ){
        Livro[] livroFound;
        livroFound = SistemaLivro.searchByTitle(titulo,vetorLivro);
        return livroFound;
        
    }
    private static Livro[] getLivroByGender(String genero, Livro[] vetorLivro ){
        Livro[] livroFound;
        livroFound = SistemaLivro.searchByTitle(genero,vetorLivro);
        return livroFound;
        
    }
    private static Livro[] getLivroByAuthor(String autor, Livro[] vetorLivro ){
        Livro[] livroFound;
        livroFound =  SistemaLivro.searchByTitle(autor,vetorLivro);
        return livroFound;
        
    }
}
