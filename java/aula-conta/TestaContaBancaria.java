public class TestaContaBancaria
{

public static void main (String[] args)
{
    ContaBancaria c = new ContaBancaria("joao", 1234.0);
    
    
    System.out.println(c.getSaldo());
    c.saque(1234);
    System.out.println(c.getSaldo());
    c.deposite(500);
    System.out.println(c.getSaldo());
}
}
