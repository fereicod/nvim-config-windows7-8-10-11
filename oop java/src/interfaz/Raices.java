/*
  Utility
*/
public class Raices {
  private double a;
  private double b;
  private double c;

	public Raices(double a, double b, double c) {
    this.a = a;
		this.b = b;
		this.c = c;
	}

	private double getDiscriminante() {
	  return Math.pow(b, 2)-(4*a*c);
	}

	private void obtenerRaices() {
		double x = (-b + Math.sqrt(getDiscriminante())) / (2 * a);
		double y = (-b - Math.sqrt(getDiscriminante())) / (2 * a);
		
		System.out.println("Solucion No. 1 = " + x);
		System.out.println("Solucion No. 2 = " + y);
	}

	private void obtenerRaiz() {
		double x = (-b + Math.sqrt(getDiscriminante())) / (2 * a);
		System.out.println("Tiene una unica solcuion = " + x);
	}
	
	private boolean tieneRaices() {
		return getDiscriminante() > 0;
	}

	private boolean tieneRaiz() {
	  return getDiscriminante() == 0;
	}

	public void calcular() {
		if (tieneRaices()) {
			obtenerRaices();
		} else if (tieneRaiz()) {
			obtenerRaiz();
		} else {
			System.out.println("No tiene solucion.");
		}
	}
}
