
/**
 * Write a description of class BankAccount here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class BankAccount
{
    private double balance;
    /**
     * Constructor for objects of class BankAccount
     */
    public BankAccount()
    {
        // initialise instance variables
        balance = 0;
        // or
        // this(0);
    }
    public BankAccount(double initialBalance)
    {
        // initialise instance variables
        balance = initialBalance;
    }

    public void deposit(double amount)
    {
        double newBalance = balance + amount;
        balance = newBalance;
    }
    public void withdraw ( double amount ){
        
        double newBalance = balance - amount;
        balance = newBalance;
    }
    public double getBalance () {
        return balance;
    }
    public void monthlyFee()
    {
        this.withdraw(10);
    }
}
