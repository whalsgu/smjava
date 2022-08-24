/*
 * 논리타입(boolean)
 * 논리값(true, false)
 * 참과 거짓
 */
public class BooleanType {

	public static void main(String[] args) {
		boolean t = true;
		boolean f = false;
		boolean tf;
		
		System.out.println("  참 : " + t);
		System.out.println("거짓 : " + f);
		
		tf = f;
		System.out.println("tf? : " + tf);
		
		System.out.printf(" t : (%b)\n", t);
		System.out.printf(" f : (%b)\n", f);
		System.out.printf("tf : (%b)\n", tf);
	}

}
