<%-- 
    Document   : registroControl.jsp
    Created on : 6/10/2016, 04:31:00 PM
    Author     : chicoterry
--%>

<%@ page import ="java.sql.*"%>
<%
    String username = request.getParameter("nameuser");
    String pwd = request.getParameter("pass");
    String apellido = request.getParameter("apellido");
    String nombre = request.getParameter("nombre");
    String correo = request.getParameter("correo");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registro1","root","");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into usuarios(nombre,apellido,correo,username,password) values ('" + nombre + "','" + apellido + "','" + correo + "','" + username + "','" + pwd + "');");
    
if(i > 0){
    response.sendRedirect("logueoExitoso.jsp");
} else{
    response.sendRedirect("index.jsp");
}


%>
