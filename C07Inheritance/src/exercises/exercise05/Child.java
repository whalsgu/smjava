package exercises.exercise05;

public class Child extends Parent {
	private int studentNo;
	
	public Child() {}
	public Child(String name, int studentNo) {
		super(name);
		// this.name = name;
		this.studentNo = studentNo;
	}

}
