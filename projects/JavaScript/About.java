import java.util.Scanner;
import java.util.Arrays;

public class About {

	public About() {
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];

		System.out.println("Please, enter the 10 elements of the array.");
		for (int i = 0; i < arr.length; i++) {
			System.out.print("Arr[" + (i) + "]: ");
  		arr[i] = sc.nextInt();
		}
		
		System.out.println("\nOriginal arrangement: " + Arrays.toString(arr));
		Arrays.sort(arr);
		System.out.println("Neat arrangement: " + Arrays.toString(arr));
	}

	public static void main(String[] args) {
		About instance = new About();
	}
}
