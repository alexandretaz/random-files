
/**
 * Write a description of class CarTest here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class CarTest
{
  public static void main(String[] args){
    Car myBee = new Car(20);
    myBee.addGas(20);
    myBee.drive(100);
    double gasLeft = myBee.getGas();
    System.out.println(gasLeft);
    }
}
