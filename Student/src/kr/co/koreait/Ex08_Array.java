package kr.co.koreait;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Scanner;

public class Ex08_Array {

	public static void main(String[] args) {
		
		// <배열>
		//  - 같은 자료형을 가진 값들을 하나로 묶어서 관리함
		
		// <배열 선언>
		//  1. 자료형[] 변수명;    * 사용 권장
		//  2. 자료형   변수명[];
		
		// <배열 선언 및 초기화>
		//  1. 자료형[] 배열명   = new 자료형[크기];   * 사용 권장
		//  2. 자료형   배열명[] = new 자료형[크기];
		
		int[] intArr = new int[4];
		intArr[0] = 10;
		intArr[1] = 20;
		intArr[2] = 30;
		intArr[3] = 40;
		
		System.out.println(intArr[2]);
		
		int[] intArr2 = {10, 20, 30, 40};
		
		char[] chArr = {'a', 'b'};
		
		
		int[] numbers = new int[10];
		
		// 배열의 요소에 10~19 넣기
		// 배열명.length : 배열의 크기를 구해줌
		for(int i=0; i < numbers.length; i++) {
			numbers[i] = i+10;
		}
		
		for(int i=0; i<numbers.length; i++) {
			System.out.println(numbers[i]);
		}
		
		// 배열의 요소를 1개씩 꺼내서 짝수인 것만 sum에 합계 저장 후 출력
		int sum = 0;
		for(int i=0; i<numbers.length; i++) {
			
			// i번째 인덱스의 요소가 짝수라면 (if)
			if(numbers[i]%2 == 0) {
				// sum에 i번째 인덱스 요소를 더하고 저장
				sum += numbers[i];
			}
			
		}
		
		System.out.println(sum);
		
		
		// 1. scores 배열을 만드는데, 각각의 값은 아래와 같습니다.
		//  - {60, 77, 56, 89}
		//  - 0번 인덱스 국어 점수, 1번 인덱스는 영어 점수, 2번 인덱스는 수학점수, 3번은 인덱스는 과학 점수
		
		// 2. 반복문을 활용해서 평균 점수를 구하세요.
		//  - 합계 / 4
		// 3. 반복문 안에서 "국어 점수는 OO점 입니다." 출력
		//  - 영어, 수학, 과학 다
		int[] scores = {60, 77, 56, 89};
		int sum2 = 0;
		
		for(int i=0; i<scores.length; i++) {
			sum += scores[i];
			
			if(i == 0) {
				System.out.println("국어 점수는 " + scores[i] + "점 입니다.");
			} else if(i == 1) {
				System.out.println("영어 점수는 " + scores[i] + "점 입니다.");
			} else if(i == 2) {
				System.out.println("수학 점수는 " + scores[i] + "점 입니다.");
			} else if(i == 3) {
				System.out.println("과학 점수는 " + scores[i] + "점 입니다.");
			}
			
		}
		
		System.out.println(sum / scores.length);
		
//		int sum1 = 0;
//		int avg;
//		int[] scores = {60, 77, 56, 89, 98};
//		String[] sub = {"국어" , "영어", "수학", "과학","일본어"};
//
//		for( int j = 0; j <= sub.length-1; j++ ) {
//			System.out.printf("%s 점수는 %d점 입니다.", sub[j], scores[j]);
//			System.out.println();
//			sum += scores[j];
//		}
//
//		avg = sum / sub.length;
//		System.out.printf("평균은 %d점 입니다.", avg);
		
		// 1. 사용자로부터 숫자 5개 입력 받아서 배열에 넣음
		Scanner sc = new Scanner(System.in);
		int[] inputNumbers = new int[5];
		
		inputNumbers[0] = sc.nextInt();
		inputNumbers[1] = sc.nextInt();
		inputNumbers[2] = sc.nextInt();
		inputNumbers[3] = sc.nextInt();
		inputNumbers[4] = sc.nextInt();
		// 아니면 반복문 활용
		
		// 2. 반복문을 활용하여 해당 배열에서 짝수의 개수와 홀수의 개수를 구하세요
		int evenCount = 0; // 짝수 개수
		int oddCount = 0; // 홀수 개수
		for(int i=0; i<inputNumbers.length; i++) {
			
			// i번 인덱스의 요소가 짝수면 evenCount 1증가
			if(inputNumbers[i] % 2 == 0) {
				
				evenCount++;
			} else {
				// 홀수면 oddCount 1증가
				oddCount++;
			}
		}
		
		System.out.println("짝수 개수 : " + evenCount);
		System.out.println("홀수 개수 : " + oddCount);
		
		System.out.println(Arrays.toString(inputNumbers));
		
		Arrays.sort(inputNumbers); // 기본적으로 오름차순 정렬
		System.out.println(Arrays.toString(inputNumbers));
		
		int num1 = 10;
		Integer num2 = 20;
		
		Integer[] inputNumbers2 = {10, 50, 30, 70, 100};
		Arrays.sort(inputNumbers2, Comparator.reverseOrder()); // 내림차순
		System.out.println(Arrays.toString(inputNumbers2));
		
		
		// ---------------------------------------------------------------------
		// <얕은 복사>
		//  - 배열의 주소 값만 가져와 참조하는 방식
		//  - 하나의 배열 객체를 두 변수가 공유함
		
		int[] arr = new int[3];
		arr[0] = 10;
		arr[1] = 20;
		arr[2] = 30;
		
		int[] copyArr = arr;
		copyArr[1] = 999;
		
		System.out.println(Arrays.toString(arr));     // 원본 배열
		System.out.println(Arrays.toString(copyArr)); // 복사 배열
		
		
		// <깊은 복사>
		//  - 새로운 배열 객체를 생성하면서 기존 배열의 데이터를 복사
		int[] arr2 = {10, 20, 30};
		int[] copyArr2 = new int[arr2.length];
		
		for(int i=0; i<arr2.length; i++) {
			
			copyArr2[i] = arr2[i];
		}
		
		// -----------------------------------------------
		// <2차원 배열>
		//  - 배열을 행과 열 형태로 구성하여 표처럼 나타낼 수 있는 배열
		int[][] arr3 = {
				{10, 20, 30},
				{20, 40, 70},
				{10, 20, 30},
				{20, 10, 80},
				{50, 10, 70},
				{70, 20, 40}
		};
		
		// arr3[1][2]

	}

}
 








