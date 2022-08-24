[문제4] 다음과 같이 Car 클래스 내부에 Tire와 Engine이 멤버 클래스로 선언되어 있다.
NestedClassExample에서 멤버 클래스의 객체를 생성하는 코드를 작성하라.


public class NestedClassExample {

	public static void main(String[] args) {
		Car myCar = new Car();
		Car.Tire tire = myCar.new Tire();		// 인스턴스 멤버 클래스
		Car.Engine engine = new Car.Engine(); 	// 내부 정적 클래스
	}

}


public class Car {
	class Tire {}
	static class Engine {}
}
