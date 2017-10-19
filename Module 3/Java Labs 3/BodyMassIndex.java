/* Eric Zorn ICT 4300: Module 3 (Java Lab 3-2) 9.24.17 */

//Import Scanner
import java.util.Scanner;
 
public class BodyMassIndex {
    public static void main (String [] args) {
 
        //New Scanner
        Scanner input = new Scanner(System.in);
        
        //Variables 
        int weight, height, bmi;
        String errorHeight = "This would be taller than 8ft in inches. ERROR";
        
        //Reading In Weight and Height
        System.out.print("What is your weight in pounds? ");
        weight = input.nextInt();
        
        System.out.print("How tall are you in inches? ");
        height = input.nextInt();
        
        //Error Message
        if (height >= 96) {
            System.out.println(errorHeight);
            System.exit(0);
        }    
        
        //Display Values
        bmi = (weight * 703) / (height * height);
        System.out.println("Your Body Mass Index is: " + bmi);
        
        if (bmi >= 18.5 && bmi <= 25)  {
            System.out.println("Your BMI is optimal!");
        } else if (bmi < 18.5) {
            System.out.println("Your BMI is Underweight!");
        } else if (bmi >= 25 && bmi <= 29) {
            System.out.println("Your BMI is Overweight!");
        } else if (bmi >= 30) {
            System.out.println("Your BMI is Obese!");
        }
    }
}