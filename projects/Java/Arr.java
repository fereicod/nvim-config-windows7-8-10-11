import java.util.Scanner;

public class Arr {

	public Arr() {
		Scanner sc = new Scanner(System.in);
		int arr[] = new int[10];

		System.out.println("Enter the 10 elements of the array.");
		for (int i = 0; i < arr.length; i++) {
			System.out.print("Arr[" + (i+1) + "]: ");
			arr[i] = sc.nextInt();
		}

		System.out.print("\nNew Vector = [");
		for (int i = 0; i < 5; i++) {
			System.out.print(arr[i] + ", ");
			if (i != 4) {
				System.out.print(arr[9-i] + ", ");
			} else {
				System.out.print(arr[9-i] + "].");
			}
		}
	}

	public static void main(String[] args) {
		Arr practice75 = new Arr();
	}
}
