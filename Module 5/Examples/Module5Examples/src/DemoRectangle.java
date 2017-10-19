/*
 * This is a driver class which will instantiate object of the
 * rectangle class.
 */
public class DemoRectangle {
	public static void main(String[] args) {
		//Declare variables of type Rectangle
		Rectangle floor1, floor2, floor3;
		
		//Create Rectangle Objects 
		floor1 = new Rectangle();
		
		
		//Initialize langth and width
		floor1.setWidth(14.5);
		floor1.setLength(10.1);
		floor1.setColor("Blue");
		
		System.out.println("Rectangle 1");
		System.out.println("Width: " + floor1.getWidth());
		System.out.println("Length: " + floor1.getLength());
		System.out.println("Area: " + floor1.getArea());
		System.out.println("Color: " + floor1.getColor());
		
		
		//Second Rectangle
		floor2 = new Rectangle();
				
				
		//Initialize langth and width
		floor2.setWidth(10.0);
		floor2.setLength(20.0);
		floor2.setColor("Orange");
		
		System.out.println("==============================");
		System.out.println("Rectangle 2");
		System.out.println("Width: " + floor2.getWidth());
		System.out.println("Length: " + floor2.getLength());
		System.out.println("Area: " + floor2.getArea());
		System.out.println("Color: " + floor2.getColor());
		
		
		//Third Rectangle
		floor3 = new Rectangle();
						
						
		//Initialize langth and width
		floor3.setWidth(15.0);
		floor3.setLength(25.3);
		floor3.setColor("Yellow");
				
		System.out.println("==============================");
		System.out.println("Rectangle 3");
		System.out.println("Width: " + floor3.getWidth());
		System.out.println("Length: " + floor3.getLength());
		System.out.println("Area: " + floor3.getArea());
		System.out.println("Color: " + floor3.getColor());
	}
}