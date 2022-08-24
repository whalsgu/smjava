/*
 * 강제 타입 변환(실수)
 * 1. 특정한 타입으로 강제 변환
 * 2. 큰타입에서 작은 타입으로 변환(자료의 손실이 발생)
 * 3. 실수를 정수로 변환시키면 소수점 이하는 버려지고 정수만 취한다.
 */

public class TypeCastingFloat {

	public static void main(String[] args) {
		float fpi = 3.14159f;
		double dpi = 3.14159;
		int pi1 = (int)fpi;
		int pi2 = (int)dpi;
		
		System.out.println("fpi=" + fpi);
		System.out.println("dpi=" + dpi);
		System.out.println("pi1=" + pi1);
		System.out.println("pi2=" + pi2);
		
		// 10자리(2147483647)
		float f1 = 0.21e10f;
		int i1 = (int)f1;
		System.out.println("f1" + f1);
		System.out.println("i1=" + i1);
		
		// 10자리 이상이면 변환되는 정수 타입의 최대값
		float f2 = 0.21e12f;
		int i2 = (int)f2;
		System.out.println("f2=" + f2);
		System.out.println("i2=" + i2);
		
	}

}
