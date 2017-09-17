//Input Scanner Class
import java.util.Scanner;

//Integer Input class to demo use of Scanner class to read integer input from the keyboard
public class IntergerInput {	
	
	public static void main(String[] args) {
		//Create Scanner object
		Scanner kb = new Scanner(System.in);
		
		//Create Integer Variables
		int value1, value2, result;
		
		//Ask user for input
		System.out.print("Enter a number: ");
		value1 = kb.nextInt();
		
		System.out.print("Enter a number: ");
		value2 = kb.nextInt();
		
		//Perform calculations
		result = value1 * value2;
		
		
		//Display the Data
		System.out.println("First number is: " + value1);
		System.out.println("Second number is: " + value2);
		
		//Display Result
		System.out.println("Result is: " + result);
	}
	
}
