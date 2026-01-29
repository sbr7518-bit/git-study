package kr.co.koreait;

public class Training02_Main {

	public static void main(String[] args) {
		// Training02_Calc 객체를 생성하세요. 
		//  - 변수명 : calc
		Training02_Calc calc = new Training02_Calc();
		
		// 해당 객체의 모든 메서드를 1번 이상 씩 호출하세요.
//		int result = calc.add();
//		System.out.println(result);
		
		System.out.println(calc.add());
		
		calc.sub(10, 5);
		calc.mul(10, 5, 3);
		calc.div(10, 5);
		
		
		int[] numbers = {10, 20, 30};
		int sumResult = calc.sum(numbers);
		
	}

}






