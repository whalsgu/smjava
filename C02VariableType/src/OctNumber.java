/*
 * 8진수(oct)
 * - 8진수 값은 정수값 앞에 0을 붙인다. 
 * - 0부터 7까지 
 */
public class OctNumber {

	public static void main(String[] args) {
		int oct0 = 00;
		int oct1 = 01;
		int oct2 = 02;
		int oct3 = 03;
		int oct4 = 04;
		int oct5 = 05;
		int oct6 = 06;
		int oct7 = 07;
		// int oct8 = 08; // out of range
		int oct8  = 010; // 10진수 8
		int oct9  = 011; // 10진수 9
		int oct10 = 012; // 10진수 10
		int oct11 = 013; // 10진수 11
		int oct12 = 014; // 10진수 12
		int oct13 = 015; // 10진수 13
		int oct14 = 016; // 10진수 14
		int oct15 = 017; // 10진수 15
		
		System.out.println("> 8진수 <");
		System.out.printf(" %d, 0%o, 0x%x \n", oct0, oct0, oct0);
		System.out.printf(" %d, 0%o, 0x%x \n", oct1, oct1, oct1);
		System.out.printf(" %d, 0%o, 0x%x \n", oct2, oct2, oct2);
		System.out.printf(" %d, 0%o, 0x%x \n", oct3, oct3, oct3);
		System.out.printf(" %d, 0%o, 0x%x \n", oct4, oct4, oct4);
		System.out.printf(" %d, 0%o, 0x%x \n", oct5, oct5, oct5);
		System.out.printf(" %d, 0%o, 0x%x \n", oct6, oct6, oct6);
		System.out.printf(" %d, 0%o, 0x%x \n", oct7, oct7, oct7);
		System.out.printf(" %d, 0%o, 0x%x \n", oct8, oct8, oct8);
		System.out.printf(" %d, 0%o, 0x%x \n", oct9, oct9, oct9);
		System.out.printf(" %d, 0%o, 0x%x \n", oct10, oct10, oct10);
		System.out.printf(" %d, 0%o, 0x%x \n", oct11, oct11, oct11);
		System.out.printf(" %d, 0%o, 0x%x \n", oct12, oct12, oct12);
		System.out.printf(" %d, 0%o, 0x%x \n", oct13, oct13, oct13);
		System.out.printf(" %d, 0%o, 0x%x \n", oct14, oct14, oct14);
		System.out.printf(" %d, 0%o, 0x%x \n", oct15, oct15, oct15);
		
		// 1바이트의 최대값
		int dec = 255;
		int oct = 0377; // 8bit(11 111 111)
		int hex = 0xff; // 8bit(1111 1111)

		System.out.printf("dec: %d, 0%o, 0x%x \n", dec, dec, dec);
		System.out.printf("oct: %d, 0%o, 0x%x \n", oct, oct, oct);
		System.out.printf("hex: %d, 0%o, 0x%x \n", hex, hex, hex);
		

	}

}
