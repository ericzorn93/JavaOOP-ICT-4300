/*
*
* In this assignment, we wrote an object that had to do with an employee generation object class and then,
* we have to reference the object constructor and its methods to utilize inheritance and create different
* employees. At the end of this project, there is a final table that generated involving the student's name,
* ID number, department, and position at the university of company.
*
*/

public class Employee {

    //Variable Declarations
    private String name;
    private String idNumber;
    private String department;
    private String position;


    //Set Methods
    public void setName(String newName) {
        name = newName;
    }

    public void setIdNumber(String newIdNumber) {
        idNumber = newIdNumber;
    }

    public void setDepartment(String newDepartment) {
        department = newDepartment;
    }

    public void setPosition(String newPosition) {
        position = newPosition;
    }


    //Get Methods
    public String getName() {
        return name;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public String getDepartment() {
        return department;
    }

    public String getPosition() {
        return position;
    }
}