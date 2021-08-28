/*
  Utility
*/
public class Libro {
  // Atributos 
	private int ISBN;
	private int numerosDePaginas;
	private String titulo;
	private String autor;
	
	// Constructor
  public Libro(int ISBN, String titulo, String autor, int numerosDePaginas) {
		this.ISBN = ISBN;
		this.titulo = titulo;
		this.autor = autor;
		this.numerosDePaginas = numerosDePaginas;
	 }
  // Métodos getters & setters
	public int getISBN() {
    return ISBN;
	}
	public void setISBN(int ISBN) {
    this.ISBN = ISBN;
	}

	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
    this.titulo = titulo;
	}

	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}

	public int getNumerosDePaginas() {
		return numerosDePaginas;
	}
	public void setNumerosDePaginas(int numerosDePaginas) {
		this.numerosDePaginas = numerosDePaginas;
	}

	@Override
	public String toString() {
		return "El libro: " + titulo + " con ISBN: " + ISBN + " creado por el autor: " + autor + " tiene " + numerosDePaginas + " paginas.";
	}
}
