<%@ page import="java.util.*" %>
<html>

<body>
<form name="Formulario_Compra" action="Lista_Compra.jsp">
 
  <p>Art�culos a comprar:</p>
  <p>
    <label>
      <input type="checkbox" name="articulos" value="agua " >
      Agua </label>
    <br>
    <label>
      <input type="checkbox" name="articulos" value="leche" >
      Leche </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="pan" >
      Pan </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="mazanas" >
      Manzanas </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="carne" >
      Carne </label>
      <br>
       <label>
      <input type="checkbox" name="articulos" value="pescado" >
      Pescado </label>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="Enviar">
    <br>
  </p>
</form>


<!--ESCRIBIMOS LA LISTA QUE HEMOS SELECCIONADO -->

<h2>Carro de la Compra</h2>

<ol>

<% 
	
	//creacion de una sesion para que se agregen mas elementos al carro y no se borren al darle enviar
	
	List<String> Listaelementos = (List<String>) session.getAttribute("miselementos");

	
	
	if (Listaelementos==null){
		
		Listaelementos = new ArrayList<String>();
		
		session.setAttribute("miselementos", Listaelementos);
		
		
		
	}


	String[] seleccionado = request.getParameterValues("articulos");

	if (seleccionado!=null){
		
		for(String elemento: seleccionado){
			
			Listaelementos.add(elemento);
			
			//out.println("<li>" + elemento + "</li>");
		}
		
	}
	
	for(String elementos: Listaelementos){
		
		out.println("<li>" + elementos + "</li>");
		
	}

 %>

</ol>

</body>

</html>

