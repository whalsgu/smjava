package statics;

public class CircleArea2Main {
	public static void main(String[] args) {
		System.out.printf("CircleArea2의 카운트 : countCreation(%d)\n",CircleArea2.countCreation);
		
		CircleArea2 circle = new CircleArea2(3.0f);
		CircleArea2Main.printStatic(circle, "circle");

		CircleArea2 circle1 = new CircleArea2(4.0f);
		CircleArea2Main.printStatic(circle1, "circle1");

		CircleArea2 circle2 = new CircleArea2(5.0f);
		CircleArea2Main.printStatic(circle2, "circle2");
	}
	
	static void printStatic(CircleArea2 circle, String title) {
		System.out.printf("CircleArea2Main(%s)\n", title);
		System.out.printf("\t반지름        : %f\n", circle.radius);
		System.out.printf("\t원의넓이      : %f\n", circle.area);
		System.out.printf("\tcount         : %d\n", circle.count);
		System.out.printf("\tcountCreation : %d\n", CircleArea2.countCreation);
	}
}
