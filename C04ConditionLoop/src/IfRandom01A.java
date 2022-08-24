/*
 * 난수: 임의수 수를 컴퓨터가 발생
 * double x = Math.random()
 * 범위: 0.0 <= x < 1.0
 * ----------------------------------
 * x1=0.13077356646119231
 * x2=0.021884904048659615
 * x3=0.23470112516440622
 * x4=0.567605698867931
 * x5=0.8879389984034008
 */
public class IfRandom01A {

	public static void main(String[] args) {
		double x = 0.021884904048659615;
		
		double y = x * 6.0;
		int z = (int)y;
		int dice = z + 1;
		int last = (int)(x * 6.0) + 1; 
		System.out.printf("주사위값: x(%f), y(%f), z(%d) -> dice(%d), last(%d)\n", x, y, z, dice, last);
		
		

	}

}
