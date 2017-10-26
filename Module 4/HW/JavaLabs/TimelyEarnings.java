//Imports
import java.util.Scanner;
import java.text.DecimalFormat;

public class TimelyEarnings {

	private static DecimalFormat df2 = new DecimalFormat("##.00");

	public static void main (String[] args) {
		//Declaring the Scanner
		Scanner kb = new Scanner(System.in);
      
      System.out.print("How many days have you worked? ");
      int daysWorked = kb.nextInt();
      double penny = .01;
      double day = 0;
      double sum = .01;
      double totalSalary = .00;
     
      
      if (daysWorked >= 2) {
      	for (int i = 0; i <= daysWorked; i++) {
            if (i == 0) {
               System.out.println("Day " + i + i + ": " + " $" + df2.format(sum));
            }
            
      		day = day + penny;
            sum*= 2;
            totalSalary += sum;
      		System.out.println("Day " + i + ": " + " $" + df2.format(sum));
            
      	}
      } else {
      	System.out.println("You need to work more than one day to make a salary!");
      }
       

      System.out.println("Total Salary: " + "$" + df2.format(totalSalary));

	}

}

