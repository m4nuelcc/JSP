<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RECOGE DATOS</title>
</head>
<body>

<! IMPORTAR CLASES DE JAVA> 

<%@ page import="java.sql.*" %>

	<%
	// GUARDAMOS EN VARIABLES LOS VALORES DEL FORMULARIO

	String nombre = request.getParameter("nombre");

	String apellido = request.getParameter("apellido");

	String usuario = request.getParameter("usuario");

	String contra = request.getParameter("contra");

	String pais = request.getParameter("pais");

	String tecno = request.getParameter("tecnologias");

	//CONEXION A LA BBDD
	
	Class.forName("com.mysql.jdbc.Driver");

// 	java.sql.Connection miConexion = java.sql.DriverManager
// 			.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?useSSL=false", "root", "root");

	Connection miConexion = java.sql.DriverManager
			.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?useSSL=false", "root", "root");

	Statement miStatement = miConexion.createStatement();

	String instruccionSql = "INSERT INTO usuarios (Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) VALUES( '"
			+ nombre + "','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecno + "')";
	
	miStatement.executeUpdate(instruccionSql);
	
	out.println("Registrado con exito");
	
	%>

</body>
</html>