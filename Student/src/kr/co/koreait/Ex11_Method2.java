package kr.co.koreait;

public class Ex11_Method2 {

	public static void main(String[] args) {
		Ex11_Method2 m = new Ex11_Method2();
		m.exOverloading();
		m.exOverloading(10);
		
		Ex11_Jogger jogger = new Ex11_Jogger();
		String str1 = jogger.sayName("김재섭");
		String str2 = jogger.run(5);
		String str3 = jogger.run(100, 7);
		
		System.out.println(str1);
		System.out.println(str2);
		System.out.println(str3);
		
	}
	
	public void exOverloading() {
		System.out.println("매개변수를 안받는 메서드입니다.");
		exOverloading();
	}
	
	public void exOverloading(int num) {
		System.out.println("전달받은 매개변수는 " + num + " 입니다.");
	}

}
