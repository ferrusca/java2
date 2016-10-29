<%-- 
    Document   : gestionPlatillo
    Created on : 29/10/2016, 02:06:02 AM
    Author     : chicoterry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<%
    String platillo = request.getParameter("platillo");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prebefood", "root","");
    Statement st = con.createStatement();
    int rs;
    rs = st.executeUpdate("DELETE FROM menu WHERE platillo = '"+platillo+"';");
    if (rs > 0){
        out.write("El platillo "+platillo+" se ha borrado con éxito");
    }
    else {
        out.write("No se ha podido borrar el platillo "+platillo+ ", verifique.");
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido al control de platillos</h1>
        
        
        <h2>Añadir platillo: Introduzca el nombre del mesero a añadir</h2>
        <form id="uno" method="post" action="anadePlatillo.jsp">
            
                Nombre del platillo: 
                <input type="text" name="platillo"/>
                Precio al publico: 
                <input type="text" name="precio"/>
                <input type="submit" value="AÑADIR"/>
        
        <h2>Borrar platillo: Introduzca el nombre del Platillo a borrar</h2>
        <form method="post" action="gestionPlatillo.jsp">            
                Nombre del platillo: 
                <input type="text" name="platillo"/>  <%-- agrega informacion en el formulario --%>                               
                <input type="submit" value="BORRAR"/>
    </body>
</html>
