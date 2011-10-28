
/**
 *  
 * @author (Alexandre Andrade) 
 * @version (0.1)
 */
package av3;
/**
 * 
 * @author Alexandre dos Santos Andrade
 * 
 */
public class Livro
{
    
    public int codigo;
    public String titulo;
    public String genero;
    public String autor; 

    /**
     * Construtor para objetos da Classe livro
     */
    public Livro(int cod, String tit, String gen, String at)
    {
        codigo = cod;
        titulo = tit;
        genero = gen;
        autor = at;
        
    }

}
