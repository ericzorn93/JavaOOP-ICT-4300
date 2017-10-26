//import Scanner
import java.util.Scanner;

public class Examples {

   public static void main (String[] args) {
      //Initialize the Scanner
		Scanner kb = new Scanner(System.in);


   	  //Variable Declarations
		/*int index = 1;
		while(index < 30){
			System.out.println("Index is: " + index);
			index++; //Index = index + 1
		}
      
      System.out.println("After exiting loop");
      */
      
      /*
      int number;
      int sum = 0;
      int count = 0;
      
      while (count < 10) {
         System.out.println("Enter a number: ");
         number = input.nextInt();
         sum = sum + number;
         count++;  
      }
      
      System.out.println("Sum of 10 numbers is: " + sum);
      */
      
      
      /*
      int age = 0;
      
      while (age <= 0) {
         System.out.print("Enter your age");
         age = kb.nextInt();

         if (age <= 0) {
            System.out.println ("Invalid Input. Age must be positive");
         }
      }

      System.out.println("Your age is " + age);
      */
      
      /*
      int sum = 0;
      for (int count = 0; count <= 10; count++){
         sum = sum + count;
      }
      
      System.out.println("Sum is: " + sum);
      */
      
      int count;
      System.out.println("How many numbers do you want to add: ");
      count = kb.nextInt();
      int sum = 0;
      int input;

      for (int i = 0; i < count; i++) {
      	System.out.print("Enter a number: ");
      	input = kb.nextInt();
      	sum = sum + input;
      }
      System.out.println("Sum is: " + sum);
   }

}