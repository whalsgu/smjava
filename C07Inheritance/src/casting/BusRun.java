package casting;

public class BusRun {

	public static void main(String[] args) {
		Bus bus = new Bus();
		
		for(int station=0; station < 10; station++) {
			bus.run(2);
		}
	}

}
