[문제12] 클래스에서 해당 멤버가 필드, 생성자, 메소드 중 어떤 것인가?
설명 : 생성자는 클래스 이름과 메소드 이름이 동일하며 리턴타입이 없다.

public class Member {
	private String name;				// field(필드)
	public Member(String name) {}		// constructor(생성자)
	public void setName(String name) {} // method(메소드)
}