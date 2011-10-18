import javax.swing.JOptionPane;

public class FormPurse
{
 public static void main(String[] args){
    Purse myPu = new Purse();
    //Int i = 0 ;
    String input = JOptionPane.showInputDialog("How many nickels?");
    int count = Integer.parseInt(input);
    Coin c = new Coin(0.05);
    for (int i = 0; i < count ; i++)
    {
        myPu.add(c);
    }

    
    input = JOptionPane.showInputDialog("How many dimes?");
    count = Integer.parseInt(input);
    Coin d = new Coin(0.1);
    for (int i = 0; i < count ; i++)
    {
        myPu.add(d);
    }
    input = JOptionPane.showInputDialog("How many quarters?");
    count = Integer.parseInt(input);
    Coin e = new Coin(0.25);
    for (int i = 0; i < count ; i++)
    {
        myPu.add(e);
    }
 
    double totalValue = myPu.getTotal();
    System.out.print("The total is ");
    System.out.println(totalValue);
    
    System.exit(0);

    }
}

