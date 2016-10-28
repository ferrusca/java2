<%-- 
    Document   : registro.jsp
    Created on : 6/10/2016, 04:24:47 PM
    Author     : chicoterry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="registroControl.jsp">
            <center> 
                Nombre: 
                <input type="text" name="nombre"/>  <%-- agrega informacion en el formulario --%>
                Apellido:
                <input type="text" name="apellido"/>
                correo:
                <input type="text" name="correo"/>
                Nombre Usuario: 
                <input type="text" name="nameuser"/>  <%-- agrega informacion en el formulario --%>
                Password:
                <input type="password" name="pass"/>
                <input type="submit" value="Registrarse"/>
            </center>
        </form> <%-- peticion de tipo post(en background)--%>
        <a href="registro.jsp">Registrarse ! </a>
    </body>
</html>
