/*
 * 1. 초기용량 지정 가능
 * 2. 지정된 초기 용량을 넘어서면 자동 증가
 * 3. 기본 값 : DEFAULT_CAPACITY = 10
 * 4. 초기 용량을 너무 작게하면 빈번한 확장으로 성능의 저하를 유발
 *    너무 크게하면 낭비가 발생
 */
package lists;

import java.util.ArrayList;
import java.util.List;

public class ArrayList02 {
	final static int LIST_INIT_SIZE = 100; // 초기용량

	public static void main(String[] args) {
		
		List<String> lists = new ArrayList<String>();
		
		lists.add("0. java");
		lists.add("1. javascript");
		lists.add("2. HTML");
		
		for(String val : lists) {
			System.out.println(val);
		}
	}

}
