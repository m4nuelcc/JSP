package manuel.com.CalculosMatematicos;

public class CalculosMatematicos {

	private static int resultado;

	public static int metodoSuma(int n1, int n2) {

		resultado = n1 + n2;

		return resultado;

	}

	public static int metodoResta(int n1, int n2) {

		resultado = n1 - n2;
		return resultado;
	}

	public static int metodoMulti(int n1, int n2) {

		resultado = n1 * n2;
		return resultado;

	}
}
