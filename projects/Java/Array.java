import java.util.Scanner;

public class Array {

	public Array() {
		Scanner sc = new Scanner(System.in);

		System.out.print("Ingrese un numero: ");
		int numero1 = sc.nextInt();
		System.out.print("Ingrese un numero: ");
		int numero2 = sc.nextInt();

		System.out.println("\nLa suma es = " + (numero1+numero2));
	}

	public static void main(String[] args) {
		Array neovim = new Array();
	}
}
