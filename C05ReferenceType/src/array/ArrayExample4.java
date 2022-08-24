/*
 * [2][4] 
 *   1 2 3 4
 *   5 6 7 8
 * [4][2]
 *   1 5  
 *   2 6 
 *   3 7
 *   4 8
 */
package array;

public class ArrayExample4 {

	public static void main(String[] args) {
		int[][] a = { // 2 * 4
				{ 1,2,3,4 }, // a[0]: a[0][0], a[0][1], a[0][2], a[0][3],
				{ 5,6,7,8 }  // a[1]: a[1][0], a[1][1], a[1][2], a[1][3],
		};
		
		int[][] b = new int[4][2]; // 4 * 2
		
		System.out.printf("배열(a)의 행의 길이 : a.length=%d\n", a.length);
		
		for(int x=0; x < a.length; x++) { // a 행의 루프
			int collen = a[x].length;
			// System.out.printf("열의길이: a[%d].length = %d\n", x, collen);

			for(int y=0; y < collen; y++) { // a 열의 루프, [y = {0,1,2,3}, x = 0], [y = {0,1,2,3}, x= 1]
				int val = a[x][y];
				// System.out.printf("[(%d,%d):%d] ", x, y, val);
				System.out.printf("[%d] ", val);
				b[y][x] = val;
			}
			System.out.println();
		}

		System.out.println();
		System.out.println("b의 배열의 값");
		for(int x=0; x < b.length; x++) {
			int collen = b[x].length;
			// System.out.printf("열의길이: a[%d].length = %d\n", x, collen);
			for(int y=0; y < collen; y++) {
				System.out.printf("[%d] ", b[x][y]);
			}
			System.out.println();
		}

	}

}
