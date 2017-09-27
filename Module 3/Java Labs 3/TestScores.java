/* Eric Zorn ICT 4300: Module 3 (Java Lab 3-3) 9.24.17 */

// Import Scanner Class
import java.util.Scanner;

public class TestScores {
   
   public static void main (String[] args) {
       //Make Input Scanner
       Scanner input = new Scanner(System.in);

       //Variables
       int test1, test2, test3;
       double average;

       System.out.print("Enter your first test score: ");
       test1 = input.nextInt();

       System.out.print("Enter your second test score: ");
       test2 = input.nextInt();

       System.out.print("Enter your third test score: ");
       test3 = input.nextInt();

       int testScoreArray[] = {test1, test2, test3};

       //Loop over testScoreArray and PrintLn
       for (int i = 0; i < testScoreArray.length; i++) {
       	System.out.println("Test Score: " + testScoreArray[i]);
       }

       //Calculate Average of Test Scores
       average = (test1 + test2 + test3) / 3;

       //Determine Letter Grade 
       if (average <= 60) {
       	System.out.println("Your Average and Letter grade: " + average + "%" + " F");
       } else if (average >= 60 && average <= 69) {
       	System.out.println("Your Average and Letter grade: " + average + "%" + " D");
       } else if (average >= 70 && average <= 79) {
       	System.out.println("Your Average and Letter grade: " + average + "%" + " C");
       } else if (average >= 80 && average <= 89) {
       	System.out.println("Your Average and Letter grade: " + average + "%" + " B");
       } else if (average >= 90 && average <= 100) {
       	System.out.println("Your Average and Letter grade: " + average + "%" + " A");
       }
   }

}