package exercise;

public class RandomExercise {
	static final int MAX_RANDOM_COUNT = 100;
	
	int[] values = new int[MAX_RANDOM_COUNT];
	
	RandomExercise() {
		int cnt=0;
		
		while(true) {
			if(cnt >= MAX_RANDOM_COUNT) {
				break;
			}
			
			values[cnt++] = (int)(Math.random() * MAX_RANDOM_COUNT) + 1;
		}
	}
	
	void print() {
		for(int cnt=0; cnt < MAX_RANDOM_COUNT; cnt++) {
			System.out.printf("value[%d][%d]\n", cnt, values[cnt]);
		}
	}
	

	public static void main(String[] args) {
		RandomExercise rnd = new RandomExercise();
		rnd.print();
	}

}
