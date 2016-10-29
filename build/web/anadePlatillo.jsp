<%-- 
    Document   : anadePlatillo
    Created on : 29/10/2016, 02:17:01 AM
    Author     : chicoterry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<% 
    
    String platillo = request.getParameter("platillo");
    int precio = Integer.parseInt(request.getParameter("precio"));
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prebefood", "root","");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into menu(platillo,precio) values ('" + platillo + "','" + precio + "');");
    
    if(i > 0){
        out.write("Se ha añadido el platillo correctamente");
    }   else{
        out.write("No se ha podido añadir el platillo, verifique");
} %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    </body>
</html>
