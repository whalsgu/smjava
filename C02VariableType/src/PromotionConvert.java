/*
 * 자동타입변환(Promotion)
 * 1. 작은 타입에서 큰 타입으로 변환
 * 2. 문자형(char)은 양수값만 처리하므로 byte의 마이너스 값을 캐스팅하면 
 *    플러스(plus)로 바뀐다.
 */
public class PromotionConvert {

	public static void main(String[] args) {
		byte b1 = 65; // 'A'
		int  n1 = b1; // 자동캐스팅
		System.out.println("b1 : " + b1);
		System.out.println("n1 : " + n1);
		
		char ca = (char)b1;
		int  na = ca;
		
		System.out.println("ca : " + ca);
		System.out.println("na : " + na);
		
		// Type mismatch: cannot convert from byte to char
		// char c1 = b1;
		byte b2 = Byte.MIN_VALUE; // -128
		char c1 = (char)b2;
		int  n2 = (int)b2;
		int  n3 = (int)c1;
		byte b3 = (byte)c1; // -128: b2 -> c1 -> b3
		System.out.println("b2 : " + b2);
		System.out.println("c1 : " + c1);
		System.out.printf("byte(%d)(0x%x) -> char c1(%c)\n", b2, b2, c1);
		System.out.printf("char(%d)(%c) -> int (0x%x)(%d)\n", b2, c1, (int)c1, (int)c1);
		System.out.printf("char -> int n2(%d)(0x%x), n3(%d)(0x%x)\n", n2, n2, n3, n3);
		System.out.printf("b3(%d)(%c)\n", b3, (char)b3);
	}

}
