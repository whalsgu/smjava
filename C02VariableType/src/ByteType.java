/*
 * 바이트 타입(byte type)
 * 1바이트 단위: -128~127 값을 저장할 수 있는 공간
 */

public class ByteType {

	public static void main(String[] args) {
		byte zero = 0;
		byte minus = -128;
		byte plus = 127;
		byte abc = 123;
		byte b1, b2, b3;
		byte x1 = 99;

		System.out.println("x1: " + x1);
		
		b1 = 11;
		b2 = zero;
		b3 = abc;
		
		byte b4 = b1;
		x1 = b4;
		
		// byte x2 = x1;
		
		System.out.println("zero: " + zero);
		System.out.println("minus: " + minus);
		System.out.println("plus: " + plus);
		System.out.println("abc: " + abc);
		System.out.println("b1: " + b1);
		System.out.println("b2: " + b2);
		System.out.println("b3: " + b3);
		System.out.println("b4: " + b4);
		System.out.println("x1: " + x1);
	}
}
