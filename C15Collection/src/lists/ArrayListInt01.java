/*
 * 기본 자료형은 래퍼(wrapper) 클래스를 사용해야 한다.
 */
package lists;

import java.util.ArrayList;
import java.util.List;

public class ArrayListInt01 {

	public static void main(String[] args) {
		List<Integer> lists = new ArrayList<Integer>();
		
		lists.add(10);
		lists.add(20);

		for(int x : lists) {
			System.out.println(x);
		}
	}

}
