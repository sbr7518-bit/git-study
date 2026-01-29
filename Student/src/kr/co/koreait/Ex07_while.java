package kr.co.koreait;

import java.util.Scanner;

public class Ex07_while {

	public static void main(String[] args) {
		
		// <while>
		//  - 조건식으로 동작하는 반복문
		//  - 반복할 횟수를 알고 있지 않은 경우에 사용
		//  - 반드시 언젠가 조건식이 false가 나오도록 해줘야 함
		//     > 반복문이 종료되지 않고 무한히 실행되는걸 무한루프 라고 함 
		int count = 0;
		
		while(count < 10) {
			System.out.println("현재 반복 횟수 : " + count);
			count++;
		}
		
		
		// 1부터 10까지의 합계를 구하는 코드
		int sum = 0; // 합계를 저장할 변수
		int count2 = 1;
		
		while(count2 <= 10) {
			// count2 값을 sum에 계속 저장 (합계)
			sum += count2;
			// 또는 sum = sum + count2;
			
			// count2 1 증가
			count2++;
		}
		
		Scanner sc = new Scanner(System.in);
		int input = sc.nextInt();
		
		// 0을 입력하지 않으면 계속 0을 입력할때까지 반복
		while(input != 0) {
			input = sc.nextInt();
		}

		System.out.println("0을 입력하셨습니다.");
		
		// <do-while>
		//  - 조건식과 상관 없이 최초 1번은 무조건 실행
		
		int input2;
		
		do {
			System.out.println("aa");
			input2 = sc.nextInt();
			
		} while(input2 != 0);
		
	}
}








