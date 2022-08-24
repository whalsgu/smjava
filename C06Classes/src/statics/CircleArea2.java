/*
 * 원의 넓이 구하는 클래스
 * 원의 넓이 : 반지름 * 반지름 * 원주율(3.141592)
 * 
 */
package statics;

public class CircleArea2 {
	static float PI;   			// 원주율
	static int countCreation;;	// 객체생성 갯수
	int count;
	float radius;					// 반지름
	float area;						// 원의넓이
	
	static { // 정적 초기화 블록
		PI = 3.141592f;
		countCreation = -1;
	}
	
	CircleArea2(float radius) {
		this.radius = radius;
		this.count++;
		// CircleArea.count++;
		
		CircleArea2.countCreation++;
		// this.countCreation++;
		
		area();
	}
	
	float area() {
		this.area = radius * radius * PI;
		return this.area;
	}
	
	void print(String title) {
		System.out.printf("CircleArea(%s)\n", title);
		System.out.printf("\t반지름        : %f\n", this.radius);
		System.out.printf("\t원의넓이      : %f\n", this.area);
		System.out.printf("\tcount         : %d\n", this.count);
		System.out.printf("\tcountCreation : %d\n", CircleArea2.countCreation);
	}

	/*
	 * static method는 this를 가지고 있지 않다.
	 */
	static void printStatic(String title) {
		System.out.printf("CircleArea(%s)\n", title);
		// System.out.printf("\t반지름        : %f\n", this.radius);
		// System.out.printf("\t원의넓이      : %f\n", this.area);
		// System.out.printf("\tcount         : %d\n", this.count);
		System.out.printf("\tcountCreation : %d\n", CircleArea2.countCreation);
	}

	static void printStatic(CircleArea2 circle, String title) {
		System.out.printf("CircleArea(%s)\n", title);
		System.out.printf("\t반지름        : %f\n", circle.radius);
		System.out.printf("\t원의넓이      : %f\n", circle.area);
		System.out.printf("\tcount         : %d\n", circle.count);
		System.out.printf("\tcountCreation : %d\n", CircleArea2.countCreation);
	}

}
