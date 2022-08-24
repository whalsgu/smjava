[인터페이스]

인터페이스(Interface)

1. 객체의 사용 방법을 정의한 타입
2. 객체의 교환성을 높여 주기 위한 역할
3. 객체와 객체 사이의 통신하는 접점 역할
4. 함수의 명세(시그니처)만 정의
   - 추상 클래스의 추상 메소드와 같다.
   - 함수의 구현이 없다.
5. 상속을 통한 구현 클래스를 통해서만 객체화 할 수 있다.
   - 추상 클래스와 같다.
6. 클래스를 규격화(모듈화, 컴포넌트화)하기 위한 목적으로 사용


(관련용어 및 기술)
1. IDL(Interface Definition Language)
2. API(Application Programming Interface)
   - Static Library
   - Dynamic Link Library(DLL)
   - Shared Library(SO)
3. RMI(Java Remote Method Invocation)
4. COM(Component Object Model) - OLE
5. DCOM(Distributed Component Object Model)
6. JNI(Java Native Interface)
7. RPC(Remote Procedure Call)
8. CORBA(Common Object Request Broker Architecture)

(C++)
interface IUnknown {
	virtual HRESULT QueqyInterface(REFIID riid, void **ppvObject) = 0;
	virtual ULONG AddRef() = 0;
	virtual ULONG Release() = 0;
};
