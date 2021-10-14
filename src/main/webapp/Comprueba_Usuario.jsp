<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>COMPRUEBA DATOS</title>
</head>
<body>


	<%@ page import="java.sql.*"%>

	<%
	//RECIBIMOS LOS DATOS DEL FORMULARIO

	String usuario = request.getParameter("usuario");

	String contra = request.getParameter("contra");

	//CONEXION A LA BBDD

	Class.forName("com.mysql.jdbc.Driver");

	try {


		Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?useSSL=false", "root",
		"root");
		
		String Sql = "SELECT * FROM usuarios where USUARIO= ? AND Contrasena=?";

		PreparedStatement miStatement = miConexion.prepareStatement(Sql);

		miStatement.setString(1, usuario);

		miStatement.setString(2, contra);

		ResultSet rs = miStatement.executeQuery();
		
		//absolute da verdadero si tiene algun registro el resulset rs

		if (rs.absolute(1)) {

			out.println("Usuario Autorizado");
		} else {

			out.println("Usuario no Autorizado");

		}
	} catch (Exception e) {

		out.println("hay un error en la conexion");
	}
	%>


</body>
</html>