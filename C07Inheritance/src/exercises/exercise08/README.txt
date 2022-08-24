[확인문제8]

8. A, B, C, D, E, F 클래스가 있을 때 빈칸에 들어 올 수 없는 코드는?
정답: 2번, (B) new A()
해설: 부모객체를 자식 객체로 강제 캐스팅은 안됨

1) B b = new B()
2) B b = (B) new A()
3) B b = new D()
4) B b = new E()


메소드 선언 : void method(B b) { ...}
메소드 호출 : method(     )

1) method(new B())
2) method((B) new A())
3) method(new D())
4) method(new E())

