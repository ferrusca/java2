<%-- 
    Document   : anadeMesero
    Created on : 29/10/2016, 01:46:45 AM
    Author     : chicoterry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<% 
    
    String username1 = request.getParameter("username1");
    String nombre1 = request.getParameter("nombre1");
    String apellido1 = request.getParameter("apellido1");
    String password1 = request.getParameter("password1");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prebefood", "root","");
    Statement st = con.createStatement();
    int rs;
    int i = st.executeUpdate("insert into mesero(nombre,apellido,username,password) values ('" + nombre1 + "','" + apellido1 + "','" + username1 + "','" + password1 + "');");
    
    if(i > 0){
        out.write("Se ha añadido al mesero correctamente");
    }   else{
        out.write("No se ha podido añadir al mesero, verifique");
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
