import javax.swing.JOptionPane;

public class FormPurse
{
 public static void main(String[] args){
    Purse myPu = new Purse();
    
    String input = JOptionPane.showInputDialog("How many nickels?");
    int count = Integer.parseInt(input);
    myPu.addNickels(count);
    
    input = JOptionPane.showInputDialog("How many dimes?");
    count = Integer.parseInt(input);
    myPu.addDimes(count);
    
    input = JOptionPane.showInputDialog("How many quarters?");
    count = Integer.parseInt(input);
    myPu.addQuarters(count);
 
    double totalValue = myPu.getTotal();
    System.out.print("The total is ");
    System.out.println(totalValue);
    
    System.exit(0);

    }
}

