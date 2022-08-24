/*
 * [Set]
 * 1. 중복을 허용하지 않는다.
 * 2. 저장된 순서가 보장되지 않는다.
 * 3. 순서가 무작위이다.
 * 4. 집합처리 유용
 */
package sets;

import java.util.HashSet;
import java.util.Set;

public class SetHashSet02 {

	public static void main(String[] args) {
		Set<String> s1 = new HashSet<>();
		
		s1.add("java");
		s1.add("DBMS");
		s1.add("HTML");
		s1.add("python");
		
		s1.add("HTML");	// 중복해서 들어 가지 않음
		
		for(String str : s1) {
			System.out.println(str);
		}
	}

}
