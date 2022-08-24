package lists;

import java.util.ArrayList;
import java.util.List;

public class ArrayList01B {

	public static void main(String[] args) {
		
		List<String> lists = new ArrayList<String>();
		
		lists.add("0. java");
		lists.add("1. javascript");
		lists.add("2. HTML");
		
		// �ߺ��� �����
		lists.add("2. HTML");
		
		for(String val : lists) {
			System.out.println(val);
		}
		
	}

}
