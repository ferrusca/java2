<%-- 
    Document   : gestionmesero
    Created on : 28/10/2016, 10:02:10 PM
    Author     : chicoterry
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<%
    String username = request.getParameter("username");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prebefood", "root","");
    Statement st = con.createStatement();
    int rs;
    rs = st.executeUpdate("DELETE FROM mesero WHERE username = '"+username+"';");
    if (rs > 0){
        out.write("El mesero "+username+" se ha borrado con éxito");
    }
    else {
        out.write("No se ha podido borrar el mesero "+username+ ", verifique.");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Mesero</title>
    </head>
    <body>
        <h1>Bienvenido al control de meseros</h1>
        
        
        <h2>Añadir mesero: Introduzca el nombre del mesero a añadir</h2>
        <form id="uno" method="post" action="anadeMesero.jsp">
            
                Nombre usuario: 
                <input type="text" name="username1"/>
                Nombre: 
                <input type="text" name="nombre1"/>
                Apellido: 
                <input type="text" name="apellido1"/>
                Password: 
                <input type="password" name="password1"/>
                <input type="submit" value="AÑADIR"/>
        
        <h2>Borrar mesero: Introduzca el nombre del mesero a borrar</h2>
        <form method="post" action="gestionMesero.jsp">            
                Nombre usuario: 
                <input type="text" name="username"/>  <%-- agrega informacion en el formulario --%>                               
                <input type="submit" value="BORRAR"/>
    </body>
</html>
