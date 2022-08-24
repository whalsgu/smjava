package datetimes;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeRun2 {
	static final int YYYY = 121; 	// 2021 = 1900 + 121
	static final int MM = 0;		// 1월 : 0~11
	static final int dd = 15; 		// 15일
	static final int HH = 13; 		// 13시
	static final int mm = 30; 		// 30분
	static final int ss = 21; 		// 21초

	public static void main(String[] args) {
		Date now = new Date(YYYY, MM, dd, HH, mm, ss); // 날짜와 시간을 지정
		System.out.println(now); // Fri Jan 15 13:30:21 KST 2021
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss S밀리초");	// 출력형태
		String s1 = sdf1.format(now);	// 2021-01-15 13:30:21 0밀리초
		System.out.println(s1);
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초 S밀리초");	// 출력형태
		String s2 = sdf2.format(now);	// 현재일시를 출력형태로 바꿔서 문자열 리턴
		System.out.println(s2);

		SimpleDateFormat sdf3 = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초 S밀리초");	// 출력형태
		String s3 = sdf3.format(new Date());	// 현재일시를 출력형태로 바꿔서 문자열 리턴
		System.out.println(s3);

		SimpleDateFormat sdf4 = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초 S밀리초 E요일");	// HH(0~23)
		String s4 = sdf4.format(new Date());	// 현재일시를 출력형태로 바꿔서 문자열 리턴
		System.out.println(s4);

		SimpleDateFormat sdf5 = new SimpleDateFormat("yyyy-M-dd a hh:mm:ss S");	// hh(1~12), a(오전, 오후)
		String s5 = sdf5.format(new Date());	// 현재일시를 출력형태로 바꿔서 문자열 리턴
		System.out.println(s5);

		SimpleDateFormat sdf6 = new SimpleDateFormat("yy-M-dd a hh:mm:ss S");	// hh(1~12), a(오전, 오후)
		String s6 = sdf6.format(new Date());	// 현재일시를 출력형태로 바꿔서 문자열 리턴
		System.out.println(s6);

	}

}
