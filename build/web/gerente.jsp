<%-- 
    Document   : gerente
    Created on : 25/10/2016, 02:57:25 PM
    Author     : chicoterry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index de gerente</title>
    </head>
    <body>
        <h3>Selecciona una opcion:</h3>
        <form action='gerente.jsp'>
            <select name="eleccion">
                <option value='0'></option>
                <option value='1'>Gestionar meseros</option>
                <option value='2'>Gestionar platillos</option>
            </select>
            <input type ='submit'/>
        </form>

    </body>
</html>
