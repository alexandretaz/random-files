
/**
 * Write a description of class BankAccountTEST here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class BankAccountTEST
{
  public static void main (String[] args){
      BankAccount harry= new BankAccount();
      harry.deposit(2000);
      harry.withdraw(500);
      System.out.println(harry.getBalance());
    }
}
