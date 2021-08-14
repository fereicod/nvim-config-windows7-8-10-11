import java.util.Scanner;

public class Array {

	public Array() {
		Scanner sc = new Scanner(System.in);

		System.out.print("Ingrese el tamaño del array: ");

		int[] arr = new int[tam];

		/* Lleno el array con N números */
		for (int k = 0; k < arr.length; k++) {
			arr[k] = (k + 1);
		}

		System.out.print("Array = [");
		for (int l = 0; l < arr.length; l++) {
			if (l < (arr.length - 1)) {
				System.out.print(arr[l] + ", ");
			} else {
				System.out.print(arr[l] + "]");
			}
		}
	}

	public static void main(String[] args) {
		Array practicaNvim = new Array();
	}
}
