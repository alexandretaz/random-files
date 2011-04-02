
/**
 * Write a description of class Car here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Car
{
    private double gas;
    private double efficiency;
    /**
     * Constructor for objects of class Car
     */
    public Car(double anEfficiency)
    {
        // initialise instance variables
        efficiency = anEfficiency;
    }
    public void addGas(double amount){
        gas = gas + amount;
    }
    
    public void drive(double distance){
        gas = gas - (distance/efficiency);
    }
    
    public double getGas(){
        return gas;
    }

}
