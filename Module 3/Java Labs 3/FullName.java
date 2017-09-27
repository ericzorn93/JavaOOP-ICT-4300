/* Eric Zorn ICT 4300: Module 3 (Java Lab 3-1) 9.24.17 */

//Import Scanner Class
import java.util.Scanner;

public class FullName {

   public static void main (String[] args) {

            //Create Scanner Object
            Scanner myScanner = new Scanner(System.in);
            
            
            //Variable Declarations
            String firstName, lastName, fullName;
            char firstInitial;
            
            
            //Get First and Last Name Values
            System.out.print("What is your first name? ");
            firstName = myScanner.nextLine();
            
            System.out.print("What is your last name? ");
            lastName = myScanner.nextLine();
            
            fullName = firstName + " " + lastName;
            
            firstInitial = firstName.charAt(0);
            
            
            
            //Display Values
            System.out.println("Full Name: " + fullName);
            System.out.println("First Name's First Initial: " + firstInitial);
            
            fullName = fullName.toUpperCase();
            System.out.println("Full Name Upper Case: " + fullName);
            
            System.out.println("Full Name Length: " + fullName.length());
      }     
}