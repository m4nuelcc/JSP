
<html>
<head>
<title>Fichero JSP</title>
</head>
<body>

<h2>USUARIOS REGISTRADOS</h2>

	<b>USUARIOS CONFIRMADOS</b> <br/><br/>
	
	Nombre: <%=request.getParameter("nombre") %> &nbsp; Apellido: <%=request.getParameter("apellido") %>
	
	<br></br>
	
	<jsp:include page="Fecha.jsp"></jsp:include>
	
	

</body>
</html>