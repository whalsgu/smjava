/*
 * 정수(long) : 배정도 정수
 * - 8바이트(64bit)
 * - 범위 : -9,223,373,036,854,775,808 ~ 9,223,373,036,854,775,807
 * - 값을 지정할 때
 *   > int 범위안에 있으면 숫자를 지정할 수 있다.
 *   > int 범위를 넘어서면 숫자 끝에 l, L을 붙어야 한다. 
 *   > 대문자 L를 일반적으로 붙인다.
 */
public class LongType {

	public static void main(String[] args) {
		long intmax = 2147483647;
		long intmaxplus = 2147483648l;
		long intmaxplus2 = 2147483648L;

		// The literal 2147483648 of type int is out of range
		// long intmax2 = 2147483648;

		System.out.println("intmax : " + intmax);
		System.out.println("intmaxplus : " + intmaxplus);
		System.out.println("intmaxplus2 : " + intmaxplus);
		
		long longval = (long)(intmax + 1);
		long longval2 = intmax + 1;
		System.out.println("longval : " + longval);
		System.out.println("longval2 : " + longval2);
		
		long longval3 = intmaxplus + intmaxplus2;
		System.out.println("longval3 : " + longval3);
	}

}
