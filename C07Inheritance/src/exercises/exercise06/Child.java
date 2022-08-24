package exercises.exercise06;

public class Child extends Parent {
	private String name;
	
	public Child() {
		this("홍길동");
		System.out.println("4. Child() call");
		
	}
	
	public Child(String name) {
		// 부모의 디폴트 생성자 super()가 호출 
		this.name = name; 
		System.out.println("3. Child(String name) call");
	}

}
