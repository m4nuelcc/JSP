<%@ page import ="manuel.com.CalculosMatematicos.* "%>



<html>

<body>


<h1> EJEMPLOS DE LLAMADAS A METODOS DE UNA CLASE</h1>

La suma de 7 + 5 es: <%= manuel.com.CalculosMatematicos.CalculosMatematicos.metodoSuma(5, 7)%>

<br>

La resta de 7 + 5 es: <%= manuel.com.CalculosMatematicos.CalculosMatematicos.metodoResta(5, 7)%>

<br>

La multiplicarcion de 7 + 5 es: <%= manuel.com.CalculosMatematicos.CalculosMatematicos.metodoMulti(5, 7)%>

<br>
<!aqui llamamos al metodo de la clase porque esta importado el paquete >

la Suma de 5+5 es : <%=CalculosMatematicos.metodoSuma(5, 5) %>




</body>

</html>

