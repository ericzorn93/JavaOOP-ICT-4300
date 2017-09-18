/* Eric Zorn ICT 4300: Module 2 9.9.17 */
//Import Scanner
import java.util.Scanner;

public class PriceQuantity {

	public static void main (String[] args) {

		/* It would be common that money would be a float or a double, however, I am working with standard flat amounts of money with no decimal or change. */


    	//Initialize Scanner
		Scanner ezScan = new Scanner(System.in);

		//Divider 
		System.out.println(" ");
		
		//Price
		System.out.print("What is the price? ");
		double price = ezScan.nextDouble();

		//Quantity
		System.out.print("What is the quantity? ");
		double quantity = ezScan.nextDouble();

		//Subtotal
		double subtotal = price * quantity;

		//Sales Tax
		double salesTaxRate = 0.075; //7.5% is already dived into decimal before salesTaxAmount Variable
		double salesTaxAmount = subtotal * salesTaxRate;

		//Total Amount
		double total = subtotal + salesTaxAmount;

		//Divider
		System.out.println("==========================");

		//Outputs
		System.out.println("The price is: " + "$" + price);
		System.out.println("The quantity is: " + quantity);
		System.out.println("The subtotal is: " + "$" + subtotal);
		System.out.println("The sales tax rate is: " + salesTaxRate + " or 7.5%");
		System.out.println("The sales tax amount is: " + "$" + salesTaxAmount);
		System.out.println("---------------------------");
		System.out.println("The total amount is: " + "$" + total);

		//Divider
		System.out.println(" ");
	}
}