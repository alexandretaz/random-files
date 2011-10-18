public class ContaBancaria
{
    private String nome;
    private Double saldo;
    public Double teste;

    public ContaBancaria(String n, Double i)
    {
        nome = n;
        saldo = i;
    }

    public void saque(int quant)
    {
        
       if ( (saldo - quant) >= 0)
       {
            saldo = saldo - quant; 
       }
    }
    
    public void deposite(int quant)
    {
       saldo = saldo + quant;
    }
    public String getSaldo()
    {
        return(nome + "\n R$ " + saldo);
    }
}
