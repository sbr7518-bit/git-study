package kr.co.koreait;


public class test2 {

	public static void main(String[] args) {
		
		test2 test = new test2();
		int[] num = {1, 2, 3};
		
		System.out.println(num);
		
		int[] result = test.changeArr(num);
		
		System.out.println(num);

	}
	
	public int[] changeArr(int[] num) {
		num[1] = 1000;
		System.out.println(num);
		return num;
	}

	
}

