/*
 * 상수(constant)
 * 변하지 않는 값
 * final 자료형 변수이름 = 값;
 */
public class Constant {

	public static void main(String[] args) {
		final int MAX_SPEED = 80; // 최고속도 80Km 제한 도로
		int speed = 60;
		
		// The local variable MIN_SPEED may not have been initialized
		// final int MIN_SPEED;
		// System.out.printf("MAX_SPEED(%d), MIN_SPEED(%d), speed(%d)\n", MAX_SPEED, MIN_SPEED, speed);
		System.out.printf("MAX_SPEED(%d), speed(%d)\n", MAX_SPEED, speed);
		
		speed = 90;
		
		// The final local variable MAX_SPEED cannot be assigned.
		// 상수변수는 값을 변경할 수 없다.
		// MAX_SPEED = 100;

		if(speed > MAX_SPEED) {
			System.out.printf("제한 속도는 (%d)Km이며, 현재 속도는 (%d)Km 입니다.\n", MAX_SPEED, speed);
		}
	}

}
