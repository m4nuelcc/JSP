<html>

<body>

	<h1 style="sext-aling: center">Ejemplo de Declaraciones en JSP</h1>



<%!private int resultado;

	public int metodoSuma(int n1, int n2) {

		resultado = n1 + n2;

		return resultado;

	}

	public int metodoResta(int n1, int n2) {

		resultado = n1 - n2;
		return resultado;
	}

	public int metodoMulti(int n1, int n2) {

		resultado = n1 * 2;
		return resultado;

	}%>
	
	la suma de 5 y 10 es: <%= metodoSuma(5, 10) %>
	
	<br>
	
	la Resta de 5 y 10 es: <%= metodoResta(5, 10) %>
	
	<br>c
	
	la mutiplicacion de 5 y 10 es: <%= metodoMulti(5, 10) %>
	

</body>
</html>