//Import Scanner Class
import java.util.Scanner;

//Double Input class to demo use of Scanner to read real data
public class DoubleInput {
	
	public static void main(String[] args) {
		Scanner kb = new Scanner(System.in);
		
		//Variables
		double value1, value2, result;
		
		//Ask user for Input
		System.out.print("Enter a number: ");
		value1 = kb.nextDouble();
		
		System.out.print("Enter a number: ");
		value2 = kb.nextDouble();
		
		//Calculation 
		result = value1 + value2;
		
		//Display Output
		System.out.println();
		System.out.println("First number is: " + value1);
		System.out.println("Second number is: " + value2);
		System.out.println("============================");
		System.out.println("Result is: " + result);
	}
	
}
