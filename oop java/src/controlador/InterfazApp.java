public class InterfazApp {

	public static void main(String[] args) {
    Libro libro1 = new Libro(4699644, "Lo que se va vuelve a llegar", "Josue Romero", 257);
		Libro libro2 = new Libro(9742158, "Dios es nuestro salvador", "Josias Romero", 591);

		System.out.println(libro1.toString());
		System.out.println(libro2.toString());

		if (libro1.getNumerosDePaginas() > libro2.getNumerosDePaginas()) {
      System.out.print("Ademas, el libro 1 tiene mas paginas que el libro 2.");
		} else {
      System.out.print("Ademas, el libro 2 tiene mas paginas que el libro 1.");
		}
	}
}
