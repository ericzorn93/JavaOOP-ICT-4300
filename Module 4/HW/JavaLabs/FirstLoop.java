//Import Scanner
import java.util.Scanner;

public class FirstLoop {

	public static void main (String[] args) {
   	//Initialize the Scanner
		Scanner kb = new Scanner(System.in);
      
      //Variable Declarations
      int count, input, sum = 0;
      

      //Display
      System.out.print("How many numbers would you like to add together? ");
      count = kb.nextInt();

      if (count >= 1) {
      	for (int i = 0; i < count; i++) {
      		System.out.print("Please enter a number " + (i + 1) + ": ");
      		input = kb.nextInt();
      		sum = sum + input;
      	}
      	System.out.println("Your sum is: " + sum);
      } else {
      	System.out.println("ERROR: You've entered a number less than or equal to 0!");
         // input = kb.nextInt();
      }
	}
   
}