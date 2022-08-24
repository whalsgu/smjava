/*
 * 문자열(String) : 기본타입은 아니지만 기본타입처럼 사용.
 * - 문자열을 다루도록 자바에 기본적으로 제공하는 클래스
 * - 문자열은 문자(char)들의 집합
 * - 큰따옴표(")로 양쪽을 묶는다.
 * - 예 : "한글", "홍길동", "alphabetic"
 * ------------------------------------------------------------
 * - String은 참조타입
 * - String 변수는 참조 변수
 * - String 변수의 각 문자(char)를 개별적으로 바꿀 수가 없다.
 * - 참조타입:
 */
public class StringType2 {
	String nvl;				 // 클래스의 멤버 변수는 초기값을 지정하지 않으면 참조변수인 경우는 null로 초기화 된다.
	String empty = "";		 // 빈문자열
	String name  = "홍길동";
	String alphabet = "abcdef";

	public static void main(String[] args) {
		printVariable(new StringType2());
	}
		
	public static void printVariable(StringType2 obj) {
		// Cannot make a static reference to the non-static field nvl
		// System.out.println("nvl : " + nvl);
		
		// Cannot use this in a static context
		// System.out.println("nvl : " + this.nvl);

		System.out.println("nvl : " + obj.nvl);
		System.out.println("empty : " + obj.empty);
		System.out.println("name : " + obj.name);
		System.out.println("alphabet : " + obj.alphabet);
	}

}
