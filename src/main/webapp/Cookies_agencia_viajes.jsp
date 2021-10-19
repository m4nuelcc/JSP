<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h1 style="text-align: center;">Agencia Viajes</h1>
	
	

	<%
		//Valor por defecto
		
		String ciudad_favorita="Madrid";
	
		//Lee la cookie de la peticion del navegador
		
		Cookie[] lasCookies = request.getCookies();
		
		// Buscar las preferencias. la ciudad favoria
		
		if(lasCookies!=null){
			
			for (Cookie cookie_temp: lasCookies){
				
				if("agencia_Viajes.ciudad_favorita".equals(cookie_temp.getName())){
					
					ciudad_favorita= cookie_temp.getValue();
					
					break;
				}
				
			}
			
		}
	%>
	
	 <h1><%=ciudad_favorita %></h1>
	 
	 <a href="Cookies_Formulario_envio_Preferencias.html">volver al formulario</a>
	 

	
</body>
</html>