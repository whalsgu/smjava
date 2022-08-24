package statecontrols.notifies;

public class DataBox {
	private String data;
	
	/*
	 * 소비자(자료 열람자)
	 */
	public synchronized String getData() {
		/*
		 * data 필드가 null이면 소비자 스레드를 일시 정지 상태로 만듦
		 */
		if(this.data == null) {
			try {
				wait();
			}
			catch(InterruptedException e) {
			}
		}
		
		/*
		 * data 필드를 null 만들고 생산자 스레드를 실행 대기 상태로 만듦
		 */
		String returnVal = this.data;
		data = null;
		System.out.println("Consumer : data=" + returnVal);
		notify();
		
		return returnVal;
	}
	
	/*
	 * 생산자(자료 제공자)
	 */
	public synchronized void setData(String data) {
		if(this.data != null) { // 소비자가 아직 데이터를 읽지 않음
			try {
				wait();
			}
			catch(InterruptedException e) {
				
			}
		}
		
		this.data = data;
		System.out.println("Producer : data=" + data);
		notify();
	}

}
