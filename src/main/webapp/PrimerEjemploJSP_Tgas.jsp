<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!--  <!importamos la libreria JSTL "C" CORE> -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String alumnos[] = { "Manuel", "Renee", "Maria", "Andrea" };

pageContext.setAttribute("losAlumnos", alumnos);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- 	MODO JSP	 -->
	
	<h1> MODO JSTL</h1><br>
	<%
	for (String alumno : alumnos) {

		out.print(alumno + "<br>");

	}
	%>

	<!-- MODO JSTL -->
	
	<h1> MODO JSTL</h1><br>
	
	<c:forEach var="alumno" items="${losAlumnos}">
	
		${alumno} <br/>
	
	</c:forEach>

</body>
</html>