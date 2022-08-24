[문제5] 다음과 같은 메소드가 있을 때 예외를 잘못 처리한 것은 무엇인가?
public void method1() throws NumberFormatException, ClassNotFoundException {
 ... 
} 
정답: 3번
해설: method1()을 호출한 곳에서 NumberFormatException, ClassNotFoundException을
      try해서 catch로 받아야 한다.
      
1) Exception운 예외 클래스의 최상위이므로 모든 예외를 받을 수 있다,
	try { 
		method1(); 
	} 
	catch(Exception e) {}

2)  method2()를 호출한 곳으로 모든 예외를 떠넘기기
	void method2() throws Exception	{ 
		method1(); 
	}

3) Exception을 먼저 받음(catch)으로 ClassNotFoundException 도달하지 못함
   
	try { 
		method1(); 
	} 
	catch(Exception e) {} 
	catch(ClassNotFoundException e) {}
	--------------------------------------------------------
	try { 
		method1(); 
	} 
	catch(ClassNotFoundException e) {}
	catch(NumberFormatException e) {} 
 
	--------------------------------------------------------
	try { 
		method1(); 
	} 
	catch(ClassNotFoundException | NumberFormatException e) {}
	

4) ClassNotFoundException을 받고 NumberFormatException은 Exception으로 받음
	try { 
		method1(); 
	} 
	catch(ClassNotFoundException e) {} 
	catch(Exception e) {}
