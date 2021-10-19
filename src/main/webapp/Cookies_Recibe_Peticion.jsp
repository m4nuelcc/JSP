<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Import" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	// Leyendo datos del formulario
	
	String ciudad_favorita = request.getParameter("PaisSeleccionado");

	//crear cookie
	
	Cookie laCookie = new Cookie("agencia_Viajes.ciudad_favorita", ciudad_favorita);
	
	// Vida de la cookie
	
	laCookie.setMaxAge(365*24*60*60*60);  //un año 
	
	// Enviar a  Usuario
	
	response.addCookie(laCookie);

	
%>

	<h1>Gracias por enviar sus prefeencias </h1>
	
	<a href="Cookies_agencia_viajes.jsp">Ir a la agencia de Viajes</a>
	
	
	
</body>
</html>