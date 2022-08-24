/*
 * 난수: 임의수 수를 컴퓨터가 발생
 * double x = Math.random()
 * 범위: 0.0 <= x < 1.0
 * ---------------------------------------------------------------
 * 경우의 수 = 최대값 - 최소값 + 1
 * 최종결과  = 난수 * 경우의 수 + 시작값
 * ---------------------------------------------------------------
 * [문제] 0점부터 100점 사이의 난수를 발생시켜서 등급을 나누어라.
 *  - A: 95점이상, B:90점이상, C:80점이상, D:70점이상, E:60이상, F:60점미만
 *  - 60점 미만이면 경고 메시지를 출력한다.
 *  - A   : "전액 장학생" 메시지를 출력
 *  - B   : "반액 장학생" 메시지를 출력
 *  - C,D : "내년을 기약하세요" 메시지를 출력
 *  - E   : "좀 더 노력하세요" 메시지를 출력
 *  - A~E : "합격" 출력
 *  - F   : "과락" 출력, "다시 도전하세요"
 */
public class IfRandom04 {
	
	final static int MAX_SCORE = 100; // 최고점수
	final static int MIN_SCORE = 0;   // 최저점수
	final static int MIN_PASS  = 60;  // 합격최저점수(합격/과락 기준점수)
	final static int GRADE_A   = 95;
	final static int GRADE_B   = 90;
	final static int GRADE_C   = 80;
	final static int GRADE_D   = 70;
	final static int GRADE_E   = 60;
	
	public static void main(String[] args) {
		double x = Math.random();
		int score = (int)(x * (MAX_SCORE - MIN_SCORE)) + 1;
		
		System.out.printf("random:(%f)(%d)%n", x, score);
		
		String pass = ""; // 합격여부
		String msg  = ""; // 출력메시지
		char grade  = 'X';   // 등급
		
		if(score >= MIN_PASS && score <= MAX_SCORE) {
			pass = "합격";
			if((score >= GRADE_A)) {
				grade = 'A';
				msg = "전액 장학생";
			}
			else if(score >= GRADE_B) {
				grade = 'B';
				msg = "반액 장학생";
			}
			else if(score >= GRADE_C) {
				grade = 'C';
				msg = "내년을 기약";
			}
			else if(score >= GRADE_D) {
				grade = 'D';
				msg = "내년을 기약";
			}
			else if(score >= GRADE_E) {
				grade = 'E';
				msg = "좀 더 노력하세요";
			}			
		}
		else if(score >= MIN_SCORE && score < MIN_PASS) { 
			pass = "과락";
			grade = 'F';
			msg = "다시 도전하세요";
		}
		else {
			pass = "오류";
			grade = 'X';
			msg = "잘못된 점수입니다.";
		}
		
		System.out.printf("[%d][%c]->[%s][%s]\n", score, grade, pass, msg);
	}
	

}
