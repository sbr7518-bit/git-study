package kr.co.koreait;

import java.util.Arrays;

public class Ex12_args {

	public static void main(String[] args) {
		Ex12_args a = new Ex12_args();
		// a.printNumbers(10);
		a.printNumbers(10, 20);
		a.printNumbers(10, 20, 30);
	}
	
	public void printNumbers(int num1, int num2, int... numbers) {
		System.out.println(Arrays.toString(numbers));
	}

}
