[java API]

(문서)
https://docs.oracle.com/javase/8/docs/api/

(Object)
1. 자바의 모든 클래스는 기본적으로 Object를 상속한다.
2. Class Object is the root of the class hierarchy. 
   Every class has Object as a superclass. 
   All objects, including arrays, implement the methods of this class.
   
   
(얕은 복제)
1. 참조형인 경우 주소만 복제되어 내용은 기존의 객체를 참조
2. 기존 객체를 공유하게되어 복제된 객체에서 수정하게 되면 
   원본 객체의 내용도 변경된다.
   
(깊은 복제)    
1. 참조형인 경우 새로 객체를 생성하여 데이터를 할당해야 한다.
2. 값이 복제가 되게 하기 위해서는
	> 값을 담을 객체를 다시 생성(새로운 그릇은 준비)
    > 새로운 그릇에 기존에 있는 값을 옮겨 담아야 한다.
3. 기본형은 값이 복제된다.
   