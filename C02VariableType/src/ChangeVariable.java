/*
 * 변수의 값 교체
 */
public class ChangeVariable {

	public static void main(String[] args) {
		int a = 10;
		int b = 20;
		
		System.out.printf("a(%d), b(%d)\n", a, b);
		
		int c = a;
		a = b;
		b = c;
		System.out.printf("a(%d), b(%d)\n", a, b);

	}

}
