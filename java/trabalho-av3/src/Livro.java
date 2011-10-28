
/**
 * Write a description of class Livro here.
 * 
 * @author (Alexandre Andrade) 
 * @version (0.1)
 */
package av3;

public class Livro
{
    public int codigo;
    public String titulo;
    public String genero;
    public String autor; 

    /**
     * Constructor for objects of class Livro
     */
    public Livro(int cod, String tit, String gen, String at)
    {
        codigo = cod;
        titulo = tit;
        genero = gen;
        autor = at;
        
    }

}
