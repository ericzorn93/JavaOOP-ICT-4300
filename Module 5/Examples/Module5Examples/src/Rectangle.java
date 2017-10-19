/* 
 * This is a Rectangle Class. It has two fields.
 * These are: Length and width.
 * Methods: setWidth, setLength, getWidth, getLength and getArea
 */
public class Rectangle {
	
	//Declare fields
	// Syntax: private type name
	private double length;
	private double width; 
	private String color;
	
	//setWidth Method
	public void setWidth(double newWidth) {
		width = newWidth;
	}
	
	//setLength Method 
	public void setLength(double newLength) {
		length = newLength;
	}
	
	//setColor Method
	public void setColor(String newColor) {
		color = newColor;
	}
	
	//getWidth Method
	public double getWidth() {
		return width;
	}
	
	//getLength Method
	public double getLength() {
		return length;
	}
	
	//getArea Method 
	public double getArea() {
		return (width * length);
	}
	
	//getColor Method
	public String getColor() {
		return color;
	}
}