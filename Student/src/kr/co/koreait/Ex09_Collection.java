package kr.co.koreait;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class Ex09_Collection {

	public static void main(String[] args) {
		// <컬렉션>
		//  - 동일한 자료형을 묶어서 관리하는 자료구조
		//  - 저장 공간의 크기를 동적으로 관리
		
		// <ArrayList>
		//  - 기존 배열과 동일한 구조를 가짐 (인덱스 사용 등)
		//  - 크기가 동적으로 관리됨
		
		ArrayList<Integer> intList = new ArrayList<>();
		
		intList.add(1);
		intList.add(3);
		intList.add(5);
		intList.add(3);
		intList.add(7);
		
		intList.add(3, 10); // 3번 인덱스에 10을 추가하겠다. (기존 값은 뒤로 밀려남)
		
		System.out.println(intList);
		
		intList.remove(3); // 3번 인덱스 제거
		System.out.println(intList);
		
		for(int i=0; i<intList.size(); i++) {
			System.out.println(intList.get(i));
		}
		
		
		// <LinekdList>
		//  - 각각의 노드가 데이터와 포인트를 가지고 연결된, 링크된 형식을 가진 자료구조 (배열)
		LinkedList<String> linked = new LinkedList<>();
		linked.add("홍길동");
		linked.add("김철수");
		
		System.out.println(linked);
		
		// <HashSet>
		//  - 순서를 보장하지 않고 중복을 허용하지 않는 특징을 가진 자료구조
		HashSet<Integer> hashSet = new HashSet<>();
		hashSet.add(1);
		hashSet.add(2);
		hashSet.add(2);
		hashSet.add(3);
		
		System.out.println(hashSet);
		
		// <HashMap>
		//  - Key - Value 형태를 가진 자료구조
		//  - Key는 중복 불가
		//  - Value는 중복 허용
		
		//       key     Value
		HashMap<String, Integer> hashMap = new HashMap<>();
		
		
		hashMap.put("숫자1", 10);
		hashMap.put("숫자2", 20); // {숫자1=10, 숫자2=20}
		hashMap.put("숫자2", 30); // {숫자1=10, 숫자2=30}   ->   수정
		hashMap.put("숫자3", 40);
		hashMap.put("숫자4", 50);
		hashMap.remove("숫자2"); // 숫자2라는 키를 가진 요소 삭제
		
		System.out.println(hashMap);
		System.out.println(hashMap.get("숫자2"));
		System.out.println(hashMap.keySet()); // 전체 키를 배열 형태로 반환
		
		for(String key : hashMap.keySet()) {
			System.out.println("Key : " + key + ", Value : " + hashMap.get(key));
		}
		
	}

}













