package kr.co.koreait;

import java.util.Scanner;

public class practice {

	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("-----메뉴판-----");
		System.out.println("1. 아이스 아메리카노");
		System.out.println("2. 카페라떼");
		System.out.println("3. 딸기 요거트 스무디");
		System.out.print("메뉴를 선택하세요 : ");
		int choice = sc.nextInt();
		
		// 사용자가 1번을 입력했을 경우 "아이스 아메리카노를 선택하셨습니다." 출력
		// 2번 : "카페라떼를 선택하셨습니다." 출력
		// 3번 : "딸기 요거트 스무디를 선택하셨습니다" 출력
		// 그 외 : "해당하는 메뉴가 없습니다" 출력
		
		switch(choice) {
		case 1: 
			System.out.println("아이스 아메리카노 선택하셨습니다");
			break;
		case 2:
			System.out.println("카페라떼를 선택하셨습니다");
			break;
		case 3:
			System.out.println("딸기 요거트 스무디를 선택하셨습니다");
			break;
		default:	
			System.out.println("해당하는 메뉴가 없습니다.");
		}
		
		
		

		
		
		
		
		
		
		
		
		
		
		

	}

}
