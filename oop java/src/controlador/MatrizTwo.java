import java.util.Arrays;
import java.util.Scanner;

public class MatrizTwo {

	public void pedirMatriz() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Ingrese # de columnas: ");
		int nCol = sc.nextInt();

		int[][] matriz = new int[5][nCol];

		for (int i = 0; i < matriz.length; i++) {
			for (int j = 0; j < matriz[i].length; j++) {
				matriz[i][j] = (int) (Math.random() * 10 + 0);
			}
			System.out.println(Arrays.toString(matriz[i]));
		}
	}

	public static void main(String[] args) {
		MatrizTwo practica = new MatrizTwo();
		practica.pedirMatriz();
	}
}
