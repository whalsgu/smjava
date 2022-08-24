/*
 * 스위치(switch): 조건 제어문
 * - 조건식 : 문자열(String)
 */
public class SwitchStatement03B {

	public static void main(String[] args) {
		String area = "부산";
		// String area = "경기";
		// String area = "서울";
		String areacd = "";
		
		switch(area) { // 자바7 이상
		case "서울":
			areacd = "02";
			break;
		case "대전":
			areacd = "042";
			break;
		case "부산":
			areacd = "051";
			break;
		case "경기":
			areacd = "031";
			break;
		}
		
		System.out.printf("전화국번: %s(%s)\n",  area, areacd);

		String seoul = "서울";
		String daejeon = "대전";
		String busan1 = "부산";
		String busan2 = new String("부산");
		String ggi = "경기";
		
		areacd = "없음";
		// area = new String("서울");

		// IF STATEMENT
		// 문자열 비교(==)는 참조(주소)를 비교함으로 
		// 값이 같아도 주소가 달라서 같지 않다고 판단
		if(area == seoul) { // 같지 않다.(주소)
			areacd = "02";
		}
		
		if(area == daejeon) {
			areacd = "042";
		}
		
		if(area == busan2) { // 같지 않다.(주소)
			areacd = "052";
		}
		
		if(area == busan1) { // 같다.
			areacd = "051";
		}
		
		if(area == ggi) {
			areacd = "031";
		}
		

		System.out.printf("전화국번: %s(%s)\n",  area, areacd);
	}

}
