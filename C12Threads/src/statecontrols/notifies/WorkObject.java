/*
 * [wait]
 *  - 동기화 블럭 내에서 일시 정지 상태
 *  - 매개값으로 주어진 시간이 지나면 자동으로 실행 대기 상태
 *  - 시간이 주어지지 않으면 notify, notifyAll에 의해서 실행 대기 상태
 * ------------------------------------------------------------------
 * [notify, notifyAll]
 *  - 실행대기 상태롤 만듦
 *  - wait() 메소드에 의해 정지 상태에 있는 스레드를 실행 대기 상태로 만듦
 *  - resume 대신 사용
 */
package statecontrols.notifies;

public class WorkObject {
	public synchronized void methodA() {
		System.out.println("[ThreadA] > methodA(+)");
		notify(); // wait 상태에 있는 다른 스레드를 실행대기 상태로 만듦(ThreadB)
		
		try {
			wait(); // 자신을 일시 정지 상태로 만듦(ThreadA)
		}
		catch(InterruptedException e) {
		}
		
	}
	
	public synchronized void methodB() {
		System.out.println("[ThreadB] > methodB(*)");
		notify(); // wait 상태에 있는 다른 스레드를 실행대기 상태로 만듦(ThreadA)
		
		try {
			wait();  // 자신을 일시 정지 상태로 만듦(ThreadB)
		}
		catch(InterruptedException e) {
		}
	}

}
