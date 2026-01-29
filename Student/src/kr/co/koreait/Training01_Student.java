package kr.co.koreait;

import java.util.ArrayList;
import java.util.Scanner;

public class Training01_Student {

	public static void main(String[] args) {
		// <학생 관리 프로그램>
		//  - 사용자로부터 아래와 같은 메뉴를 입력 받음
		//    1. 학생 추가
		//    2. 학생 목록 조회
		//    0. 프로그램 종료
		
		// - 1번 누르면 사용자로부터 학생의 이름을 입력 받고 ArrayList에 추가
		// - 2번 누르면 ArrayList에 저장된 모든 학생의 이름을 출력
		//   출력 형식 : "1. OOO 학생"
		// - 0번 누르면 프로그램 종료
		
		// - 사용자가 프로그램 종료 선택할 때 까지 메뉴를 반복적으로 계속 제공
		Scanner sc = new Scanner(System.in);
		ArrayList<String> student = new ArrayList<>();
		boolean isTrue = true;
		
		while(isTrue) {
			System.out.println("=====학생 관리 프로그램=====");
			System.out.println("1. 학생 추가");
			System.out.println("2. 학생 목록 조회");
			System.out.println("3. 학생 삭제");
			System.out.println("0. 프로그램 종료");
			System.out.print("메뉴 : ");
			int choice = sc.nextInt();
			sc.nextLine();
			
			switch(choice) {
			case 1:
				System.out.print("학생 이름 : ");
				String name = sc.nextLine();
				student.add(name);
				System.out.println(name + " 학생이 추가되었습니다.");
				break;
			case 2:
				for(int i=0; i<student.size(); i++) {
					System.out.println(i+1 + ". " + student.get(i) + " 학생");
				}
				
				break;
			case 3:
				// 1. 사용자로부터 학생 이름을 입력받음
				System.out.print("학생 이름 : ");
				String removeName = sc.nextLine();
				// 2. 그 학생의 인덱스 번호를 찾아서 제거
				//    - remove()
				int removeIndex = student.indexOf(removeName);
				student.remove(removeIndex);
				
//				for(int i=0; i<student.size(); i++) {
//					String studentName = student.get(i);
//					
//					if(studentName.equals(removeName)) {
//						student.remove(i);
//					}
//				}
				
				break;
			case 0:
				System.out.println("프로그램을 종료합니다.");
				isTrue = false;
				break;
			default:
				System.out.println("잘못된 메뉴를 선택하셨습니다.");
			}
			
		}
		
		

	}

}










