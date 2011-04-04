
/**
 * Write a description of class Purse here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Purse
{
    // instance variables - replace the example below with your own
    private int nickels;
    private int dimes;
    private int quarters;
    
    private final double NICKEL_VALUE = 0.05;
    private final double DIME_VALUE = 0.1;
    private final double QUARTER_VALUE = 0.25;
    
    /**
     * Constructor for objects of class Purse
     */
    public Purse()
    {
        nickels = 0;
        dimes = 0;
        quarters = 0;
    }
    
    public void addNickels(int count)
    {
        nickels = nickels + count;
    }
    public void addDimes(int count)
    {
        dimes = dimes + count;
    }
    public void addQuarters(int count)
    {
        quarters = quarters + count;
    }
    public double getTotal()
    {
        return nickels * NICKEL_VALUE + dimes * DIME_VALUE + quarters * QUARTER_VALUE;
    }
}
