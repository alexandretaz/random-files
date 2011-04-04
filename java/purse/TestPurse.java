
/**
 * Write a description of class TestPurse here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class TestPurse
{
 public static void main(String[] args){
 Purse myPu = new Purse();
 
 myPu.addNickels(3);
 myPu.addDimes(1);
 myPu.addQuarters(2);
 
 double totalValue = myPu.getTotal();
 System.out.print("The total is ");
 System.out.println(totalValue);

    }
}
