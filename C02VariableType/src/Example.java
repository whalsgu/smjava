/*
 * [2장] 확인문제
 */
public class Example {

	public static void main(String[] args) {
		/*
		 * [문제1] 자바에서 변수에 대한 설명중 틀린 것은?
		 * 1. 변수는 하나의 값만 저장할 수 있다.
		 * 2. 변수는 선언 시에 사용한 타입의 값만 저장할 수 있다.
		 * 3. 변수는 변수가 선언된 중괄호({}) 안에서만 사용 가능하다.
		 * 4. 변수는 초기값이 저장되지 않은 상태에서 읽을 수 있다.
		 * ------------------------------------------------------
		 * 정답: 4번, 변수는 초기값이 저장되지 않은 상태에서 읽을 수 있다.
		 * 해설: 읽기 전에 반드시 값이 할당되어야 한다.
		 * int x; // 초기값이 지정되지 않음(쓰레기 값이 들어가 있는 상태)
		 * x = 1; 
		 * int y = x + 10;
		 *    
		 */		
		
		/*
		 * [문제2] 변수 이름으로 사용 가능한 것은
		 * 1. modelName
		 * 2. class
		 * 3. 6hour
		 * 4. $value
		 * 5. _age
		 * 6. int
		 * -------------------------------------------
		 * 정답: 1.moduleName, 4.$value, 5._age
		 * 해설: 예약어(class, int)
		 *   > 변수의 첫번째 문자로 특수문자는 클래스의 멤버 변수로 많이 사용한다.(관례)
		 *   > 멤버변수 : 클래스에 속한 변수, 클래스 속성
		 */
		
		/*
		 * [문제3] 자바의 기본 타입(Primitive Type) 8개
		 * 정답: 
		 *   - 정수타입: byte(1byte), char(2byte), short(2byte), int(4byte), long(8byte)
		 *   - 실수타입: float(4byte), double(8byte)
		 *   - 논리타입: boolean(1byte)
		 */
		
		/*
		 * [문제4] 타입, 변수이름, 리터널
		 * int age;
		 * age = 10;
		 * double price = 3.14;
		 * ----------------------------
		 * 정답:  
		 *   - 타입: int, double
		 *   - 변수이름: age, price
		 *   - 리터널: 10, 3.14
		 */
		
		/*
		 * [문제5] 자동 타입 변환
		 * 정답: 3번, short shortvalue = charvalue;
		 * 해설: char(2byte) 양수를 short(음수, 양수)
		 */
		byte bytevalue = 10;
		char charvalue = 'A'; // 65
		// char charvalue = 32768;
		
		int intvalue = bytevalue;
		int intvalue2 = charvalue;
		// short shortvalue = charvalue; // Type mismatch: cannot convert from char to short
		short shortvalue = (short)charvalue; // 강제로 타입케스팅할 수있지만 데이터 손실이 발생
		double doublevalue = bytevalue;
		System.out.printf("shortvalue(%d), charvalue(%d)\n", shortvalue,(int)charvalue);
		
		// [문제6] 강제 타입 변환(Casting)에 대한 내용이다, 컴파일러 에러가 발생하는 것은?
		// 정답 4번
		int intValue = 10;
		char charValue = 'A';
		double doubleValue = 5.7;
		String strValue = "A";
		
		double dvar = (double)intValue;
		byte bvar = (byte)intValue;
		int nvar = (int)doubleValue;
		// char cvar = (char)strValue;
		
		// [문제7]
		// char ch7 = '';
		float f7 = 10;
		System.out.println("f7=10 : " + f7);
		
		// [문제8] 타입변환, 컴파일 오류?
		// 정답 : 1번(byte rb8 = b8 + b8)
		byte b8 = 10;
		float f8 = 2.5f;
		double d8 = 2.5;
		
		// Type mismatch: cannot convert from int to byte
		// 모든 정수 연산은 int가 기본, int로 변환하여 연산을 수행
		// b8 + b8 은 결과가 int가 된다.
		// 그러므로 byte로 할당하기 위해서는 byte로 캐스팅을 해야 한다.
		// byte rb8 = b8 + b8;
		byte rb8 = (byte)(b8 + b8);
		System.out.println("rb8: " + rb8);
		
		short s8 = 10;
		short rs8 = (short)(s8 + s8);
		System.out.println("rs8: " + rs8);
		
		int bn8 = 5 + b8;
		float rf8 = 5 + f8;
		double rd8 = 5 + d8;
	}

}
