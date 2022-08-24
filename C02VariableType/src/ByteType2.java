/*
 * +127 : 0111 1111
 *    + :         1
 * ------------------
 *        1000 0000(-128)   
 *    - :         1
 * ------------------
 *        0111 1111(127)        1   

          1000 0000
       + :        1
--------------------
          1000 0001(-127)
                   
 * ----------------------------
 *    2 : 0000 0010
 *    1 : 0000 0001
 *    0 : 0000 0000
 *   -1 : 1111 1111
 *   -2 : 1111 1110
 * -127 : 1000 0001
 * -128 : 1000 0000 
 */

public class ByteType2 {
	public static void main(String[] args) {
		byte minus = -128;
		byte plus = 127; 
		
		// Type mismatch: cannot convert from int to byte
		// byte plus128 = 128;
		
		System.out.println(">  minus(-128) : " + minus);
		System.out.println(">    plus(127) : " + plus);
		// System.out.println("> plus128(128) : " + plus128);
		
		byte plusone = (byte)(plus + 1);
		System.out.println(">   plusone(127+1) : " + plusone);
		
		byte minusone = (byte)(minus - 1);
		System.out.println("> minusone(-128-1) : " + minusone);
		
		byte minusplus = (byte)(minus + 1);
		System.out.println("> minusplus(-128+1) : " + minusplus);
	}

}
