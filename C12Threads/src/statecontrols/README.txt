[스레드 상태 제어]

1. 일시정지상태:  실행 -> 일시정지
   - sleep
   - join
   - wait
   - suspend : Deprecated
   
2. 실행대기상태: 일시정지 -> 실행대기, 실행 -> 실행대기
   - interrupt
   - notify
   - nitifyAll
   - yield
   - resume : Deprecated   
   
3. 종료
   - stop : Deprecated
   
------------------------------------------------------------------------
(스레드 메소드 설명)
------------------------------------------------------------------------
1. sleep
   - 일시 정지 상태
   - 주어진 시간이 지나면 실행 대기 상태로 전환
   
2. interrupt
   - InterruptException 예외를 발생 시킴
   - 예외처리 루틴에서 스레드를 종료하거나 어떤 처리를 할 수있다.
   
3. join
   - 일시 정지 상태
   - 다른 스레드가 종료 되기를 기다림    
   
4. notify, notifyAll
   - 실행대기 상태롤 만듦
   - wait() 메소드에 의해 정지 상태에 있는 스레드를 실행 대기 상태로 만듦   
   - resume 대신 사용
   
5. wait
   - 동기화 블럭 내에서 일시 정지 상태
   - 매개값으로 주어진 시간이 지나면 자동으로 실행 대기 상태
   - 시간이 주어지지 않으면 notify, notifyAll에 의해서 실행 대기 상태
   
6. yield
   - 실행 대기 상태
   - 다른 스레드에게 실행을 양보
   
7. Deprecated : 사용을 권고하지 않음
   - resume
   - suspend
   - stop
   
      