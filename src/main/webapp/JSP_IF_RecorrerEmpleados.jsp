

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.*, java.sql.*, manuel.com.JspTags.*"%>

<%
ArrayList<Empleado> datosEmpleado = new ArrayList<>();

Class.forName("com.mysql.jdbc.Driver");

try {

	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?useSSL=false", "root",
	"root");

	out.print("CONEXION EXITOSA");

	Statement miStatement = miConexion.createStatement();

	String Sql = "SELECT * FROM empleados";

	ResultSet rs = miStatement.executeQuery(Sql);

	while (rs.next()) {

		// 		tambien se puede poner el nombre del campo de la BBDD como en este caso nombre

		datosEmpleado.add(new Empleado(rs.getString("nombre"), rs.getString(2), rs.getString(3), rs.getDouble(4)));

	}

	rs.close();

	miConexion.close();

	pageContext.setAttribute("losEmpleados", datosEmpleado);

} catch (Exception e) {

	e.printStackTrace();
	out.print(" ERROR DE CONEXION");
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RECORRER ARRAYS</title>

<style type="text/css">
.cabecera {
	font-weight: bold;
}
</style>

</head>

<body>

	</br>
	</br>

	<div align="center">

		<h2>SUBIDAS DE LA TABLA EMPELEADOS</h2>

		<br>

		<table border="1">
			<tr class="cabecera">
				<td>NOMBRE</td>
				<td>APELLIDO</td>
				<td>PUESTO</td>
				<td>SUELDO</td>
				<td>SUBIDA</td>

			</tr>

			<c:forEach var="empleado" items="${losEmpleados}">


				<%-- 			//	${empleado.nombreAtributoClase}  --%>

				<tr>

					<td>${empleado.nombre}</td>
					<td>${empleado.apellido}</td>
					<td>${empleado.puesto}</td>
					<td>${empleado.sueldo}</td>
					<td><c:if test="${empleado.sueldo<35001}">5000</c:if> <c:if
							test="${empleado.sueldo>35001}">----</c:if></td>

				</tr>


			</c:forEach>
			
			
<!-- 				AÑADIR SUBIDA DEL SUELDO EN LA CASILLA DE SUELDO -->


		</table>
		
		<h2>INCREMENTO SUELDO EMPLEADOS</h2>
		
		<table border="1">
			<tr class="cabecera">
				<td>NOMBRE</td>
				<td>APELLIDO</td>
				<td>PUESTO</td>
				<td>SUELDO</td>
			

			</tr>

			<c:forEach var="empleado" items="${losEmpleados}">


				<%-- 			//	${empleado.nombreAtributoClase}  --%>

				<tr>

					<td>${empleado.nombre}</td>
					<td>${empleado.apellido}</td>
					<td>${empleado.puesto}</td>
					<td>
						<c:if test="${empleado.sueldo<35001}">
						   <b style="color: green;">${empleado.sueldo+5000}</b> 
						</c:if>
						
						<c:if test="${empleado.sueldo>35001}">
						    ${empleado.sueldo}
						</c:if>
					</td>	
				</tr>


			</c:forEach>

		</table>
		

	</div>
</body>
</html>