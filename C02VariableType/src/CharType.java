/*
 * 문자 타입(char) : character
 * - 하나의 문자 처리 단위
 * - 크기 : 2byte
 * - 범위 : 0 ~ 65535, 0x0000 ~ 0xFFFF
 * - 유니코드(Unicode) 처리, ASCII(0~127), 확장 ASCII(0~255)
 * - 작은따옴표(')로 양쪽을 감싼다.
 */
public class CharType {

	public static void main(String[] args) {
		char chA = 'A';
		char cha = 'a';
		char hangeul = '한';
		
		System.out.println("chA : " + chA);
		System.out.println("cha : " + cha);
		System.out.println("hangeul : " + hangeul);
		
		char chA1 = 65;
		char chA2 = 0x41;
		char chA3 = 0x0041;
		
		System.out.println("chA1 : " + chA1);
		System.out.println("chA2 : " + chA2);
		System.out.println("chA3 : " + chA3);
		
		// 유니코드 : '가'
		char hanunicode = '\uac00';
		System.out.println("hanunicode : " + hanunicode);

		// 16진수 : '가'
		char hanunicode2 = 0xac00;
		System.out.println("hanunicode2 : " + hanunicode2);
		
		// 10진수 : '가'
		char hanunicode3 = 44032;
		System.out.println("hanunicode3 : " + hanunicode3);
		System.out.println("'가' : " + '가');

	}

}
