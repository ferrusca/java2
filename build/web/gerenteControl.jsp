<%-- 
    Document   : gerenteControl
    Created on : 28/10/2016, 07:30:55 PM
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
        <%  
            int cadena = Integer.parseInt(request.getParameter("eleccion"));
            //int eleccion = Integer.parseInt(cadena);
            if(cadena == 0)
                response.sendRedirect("gerente.jsp");
            if (cadena == 1)
                response.sendRedirect("gestionMesero.jsp");
            if (cadena == 2)
                response.sendRedirect("gestionPlatillo.jsp"); 
        %>
    </body>
</html>
