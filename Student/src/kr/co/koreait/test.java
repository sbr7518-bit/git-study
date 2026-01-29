package kr.co.koreait;

public class test {

	public static void main(String[] args) {
		test test = new test();
		int num = 10;
		
		
		System.out.println(num);
		
		test.changeInt(num);
		
		System.out.println(num);

	}
	
	public void changeInt(int num) {
		num = 1000;
		System.out.println(num);
	}

}
