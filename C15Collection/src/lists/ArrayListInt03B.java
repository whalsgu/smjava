package lists;

import java.util.ArrayList;
import java.util.List;

public class ArrayListInt03B {

	public static void main(String[] args) {
		List<TestClass> ts = new ArrayList<>();
		
//		ts.add(t10);
		ts.add(new TestClass(1, 10));
		ts.add(new TestClass(2, 20));
		ts.add(new TestClass(3, 30));
		ts.add(new TestClass(4, 40));
		ts.add(new TestClass(5, 50));
		
		
		int total = 0;
		for(int index=0; index < ts.size(); index++) {
			TestClass test = ts.get(index);
		
			
			if(test.tid==3) {
				TestClass rd = ts.remove(index);
				System.out.printf("removed: tid(%d), val(%d)\n", rd.tid, rd.tval);
			}
			else { 
				total += test.tval;
				System.out.printf("val(%d)\n", test.tval);
			}
			System.out.printf("(%d / %d)\n", index, ts.size());
			
		}
		System.out.printf("total(%d)\n", total);
		
		for(TestClass test : ts) {
			System.out.printf("tid(%d), tname(%s)\n", test.tid, test.tval);
		}

	}

}
