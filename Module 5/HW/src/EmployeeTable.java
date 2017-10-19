/*
*
* In this assignment, we wrote an object that had to do with an employee generation object class and then,
* we have to reference the object constructor and its methods to utilize inheritance and create different
* employees. At the end of this project, there is a final table that generated involving the student's name,
* ID number, department, and position at the university of company.
*
*/

public class EmployeeTable {
    public static void main(String[] args) {

        Employee susan, mark, joy;


        //Create Employees
        susan = new Employee();
        mark = new Employee();
        joy = new Employee();


        //Initialize Data Susan
        susan.setName("Susan Meyers");
        susan.setIdNumber("47899");
        susan.setDepartment("Accounting");
        susan.setPosition("Vice President");

        //Initialize Data Mark
        mark.setName("Mark Jones");
        mark.setIdNumber("39119");
        mark.setDepartment("IT");
        mark.setPosition("Programmer");

        //Initialize Data Joy
        joy.setName("Joy Rogers");
        joy.setIdNumber("81774");
        joy.setDepartment("Manufacturing");
        joy.setPosition("Engineer");


        //Display Results
        System.out.println("EMPLOYEE TABLE");

        System.out.println("==========================");
        System.out.println("Name: " + susan.getName());
        System.out.println("ID Number: " + susan.getIdNumber());
        System.out.println("Department: " + susan.getDepartment());
        System.out.println("Position: " + susan.getPosition());

        System.out.println("==========================");
        System.out.println("Name: " +mark.getName());
        System.out.println("ID Number: " + mark.getIdNumber());
        System.out.println("Department: " + mark.getDepartment());
        System.out.println("Position: " + mark.getPosition());

        System.out.println("==========================");
        System.out.println("Name: " +joy.getName());
        System.out.println("ID Number: " + joy.getIdNumber());
        System.out.println("Department: " + joy.getDepartment());
        System.out.println("Position: " + joy.getPosition());

        System.out.println("==========================");
    }
}