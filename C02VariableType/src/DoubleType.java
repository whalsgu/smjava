/*
 * 실수(double) : 배정도 실수
 * 크기 : 8바이트(64bit) = 부호(1bit) + 지수(11bit) + 가수(52bit)
 * 범위 : 4.9E-324 ~ 1.7976931348623157E308
 * 최대 소수점 16자리까지
 */
public class DoubleType {

	public static void main(String[] args) {
		double db  = 0.1234567890123456;
		double pi  = 3.141592653589793;     // 16자리
		double pi1 = 3.1415926535897932;    // 17자리
		double pi2 = 3.14159265358979323;   // 18자리 
		double pi3 = 3.141592653589793238;  // 19자리 
		double pi4 = 3.1415926535897932384; // 20자리
		
		System.out.println("db(16자리) : " + db);
		System.out.println("pi(16자리) : " + pi);
		System.out.println("pi(17자리) : " + pi1);
		System.out.println("pi(18자리) : " + pi2);
		System.out.println("pi(19자리) : " + pi3);
		System.out.println("pi(20자리) : " + pi4);
		
		double n7a = 1234567.0;
		double n7b = 0.1234567e7; // 10의 7승 : 10 * 10 * 10 * 10 * 10 * 10 * 10
		
		System.out.println("n7a: " + n7a);
		System.out.println("n7b: " + n7b);
		
		double n10 = 40000000000.0;
		System.out.println("n10: " + n10);  // 4.0E10
	}

}
