public class Cuenta {
	private String nombre_cliente;
	private String numero_cuenta;
	private float tipo_de_interes;
	private float saldo;

	/* Sobre carga de constructores */
	public Cuenta(String nombre_cliente, String numero_cuenta, float tipo_de_interes, float saldo) {
		this.nombre_cliente = nombre_cliente;
		this.numero_cuenta = numero_cuenta;
		this.tipo_de_interes = tipo_de_interes;
		this.saldo = saldo;
	}

	public Cuenta(String nombre_cliente, String numero_cuenta, float tipo_de_interes, float saldo) {
		this.nombre_cliente = nombre_cliente;
		this.numero_cuenta = numero_cuenta;
		this.tipo_de_interes = tipo_de_interes;
		this.saldo = saldo;
	}
	/* Métodos getters & setters */
	public String getNombreCliente() {
		return nombre_cliente;
	}
	public void setNombreCliente(String nombre_cliente) {
		this.nombre_cliente = nombre_cliente;
	}
}
