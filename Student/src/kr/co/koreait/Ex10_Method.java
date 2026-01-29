package kr.co.koreait;

import java.util.ArrayList;

public class Ex10_Method {

	public static void main(String[] args) {
		// <메서드>
		//  - 특정 기능을 수행하는 코드를 모아둔 집합
		
		// 클래스명 변수명 = new 클래스명();
		Ex10_Method ex10 = new Ex10_Method(); // 객체 생성 or 인스턴스화
		ex10.printHello();
		
		ArrayList<String> list = new ArrayList<>();
		
		Ex10_Jogger jogger = new Ex10_Jogger();
		jogger.run();
		jogger.sayName("홍길동", 20); // 홍길동
		jogger.sayName("김철수", 19); // 김철수
		jogger.sayName("짱구", 5); // 짱구
		
	}
	
	// "안녕하세요" 라는 문자열을 출력하는 printHello() 메서드
	public void printHello() {
		System.out.println("안녕하세요.");
	}

}









