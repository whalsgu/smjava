/*
 * [문제]
 * 1. 각 월(1~12월)의 마지막 날짜를 출력하시오.
 * 2. switch문을 사용하라.
 * 
 */
public class ExerciseSW01 {

	public static void main(String[] args) {
		int month = 3;
		int day = 0;
		
		switch(month) {
		case 1: day = 31; break;
		case 2: day = 28; break;
		case 3: day = 31; break;
		case 4: day = 30; break;
		case 5: day = 31; break;
		case 6: day = 30; break;
		case 7: day = 31; break;
		case 8: day = 31; break;
		case 9: day = 30; break;
		case 10: day = 31; break;
		case 11: day = 30; break;
		case 12: day = 31; break;
		}
		
		System.out.printf("월(%d), 일(%d)\n", month, day);
	}

}
