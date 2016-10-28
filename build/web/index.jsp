<%-- 
    Document   : index.jsp
    Created on : 6/10/2016, 03:21:15 PM
    Author     : chicoterry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entrada</title>
    </head>
    <body>
        <h1>Ingresa</h1>
        <form method="post" action="login.jsp">
            <center> 
                Nombre usuario: 
                <input type="text" name="nameuser"/>  <%-- agrega informacion en el formulario --%>
                Password:
                <input type="password" name="pass"/>
                
                <input type="submit" value="mandalo !"/>
            </center>
        </form> <%-- peticion de tipo post(en background)--%>
    </body>
</html>
