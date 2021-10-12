<!https://docs.oracle.com/javaee/7/api/toc.htm>


<html>
<body>

	<h2>OBJETOS PREDEFINIDOS JSP</h2>
	
	Peticion de datos del navegador: <%= request.getHeader("User-Agent") %>
	
	<br>
	
	peticion del puerto del cliente: <%= request.getLocalPort() %>	
	
	<br>
	
	peticion del idioma del usuario:  <%= request.getLocale() %>
	
	<br>
	
	peticion del procotolo: <%= request.getProtocol() %>
</body>
</html>