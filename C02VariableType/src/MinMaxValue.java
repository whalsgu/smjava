/*
 * 데이터 타입의 최소값과 최대값
 * byte : min=-128
 * byte : max=127
 * short : min=-32768
 * short : max=32767
 * int : min=-2147483648
 * int : max=2147483647
 * long : min=-9223372036854775808
 * long : max=9223372036854775807
 * float : min=1.4E-45
 * float : max=3.4028235E38
 * double : min=4.9E-324
 * double : max=1.7976931348623157E308
 */
public class MinMaxValue {

	public static void main(String[] args) {
		System.out.println("byte : min=" + Byte.MIN_VALUE);
		System.out.println("byte : max=" + Byte.MAX_VALUE);
		
		System.out.println("short : min=" + Short.MIN_VALUE);
		System.out.println("short : max=" + Short.MAX_VALUE);

		System.out.println("int : min=" + Integer.MIN_VALUE);
		System.out.println("int : max=" + Integer.MAX_VALUE);

		System.out.println("long : min=" + Long.MIN_VALUE);
		System.out.println("long : max=" + Long.MAX_VALUE);

		System.out.println("float : min=" + Float.MIN_VALUE);
		System.out.println("float : max=" + Float.MAX_VALUE);
		
		System.out.println("double : min=" + Double.MIN_VALUE);
		System.out.println("double : max=" + Double.MAX_VALUE);
		

	}

}
