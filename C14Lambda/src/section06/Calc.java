package section06;

public class Calc {
	public static final int staticVal = 99;
	
	public static int staticMethod(int x, int y) { // 정적 메소드
		return x + y;
	}
	
	public int instanceMethod(int x, int y) { // 인스턴스 메소드
		return x + y;
	}
}
