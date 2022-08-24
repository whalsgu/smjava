package statics;

public class CircleAreaMain {

	public static void main(String[] args) {
		CircleArea circle = new CircleArea(3.0f);

		System.out.printf("원주율 : %f\n", CircleArea.PI);
		System.out.printf("원주율 : %f\n", circle.PI);
		
		// Cannot make a static reference to the non-static field CircleArea.area
		// System.out.printf("원의넓이 : %f\n", CircleArea.area);
		
		System.out.printf("원의넓이 : %f\n", circle.area);
		
		
		System.out.printf("반지름이 %f인 원의넓이 : %f\n", 3.0f, circle.area());
	}

}
