package kr.co.koreait;

public class Training02_Calc {
	// 1. 덧셈을 수행하는 add() 작성
	//  - 10+10의 결과를 출력
	
	// public void 메서드명(매개변수타입 이름)
	public int add() {
		// 10+10결과 출력 
		// System.out.println(10+10);
		return 10+10;
	}
	
	// 2. 빼기를 수행하는 sub() 작성
	//  - 숫자 2개를 매개변수로 받습니다.
	//  - 각각의 값을 뺀 결과를 출력
	public void sub(int num1, int num2) {
		int result = num1 - num2;
		System.out.println("빼기 : " + result);
		System.out.println("빼기 : " + (num1 - num2));
	}
	
	// 3. 곱하기를 수행하는 mul() 작성
	//  - 숫자 3개를 매개변수로 받습니다.
	//  - 각각의 값을 곱한 결과를 출력
	public void mul(int num1, int num2, int num3) {
		System.out.println(num1 * num2 * num3);
	}
	
	// 4. 나누기를 수행하는 div() 작성
	//  - 숫자 2개를 매개변수로 받습니다.
	//  - 각각의 값을 몫, 나머지로 나눈 결과를 출력
	//  - 출력 예시 : "몫 : OO", "나머지 : OO"
	public void div(int num1, int num2) {
		System.out.println("몫 : " + num1/num2);
		System.out.println("나머지 : " + num1%num2);
	}
	
	
	
	
	public int sum(int[] numbers) {
		int sum = 0; // 합계를 저장할 변수
		
		for(int i=0; i<numbers.length; i++) {
			sum += numbers[i];
		}
		
		return sum;
	}
	
	
}




