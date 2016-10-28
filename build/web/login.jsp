<%-- 
    Document   : login.jsp
    Created on : 6/10/2016, 03:33:04 PM
    Author     : chicoterry
--%>

<%-- administra la informacion enviada mediante post --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<%
    String username = request.getParameter("nameuser");
    String pwd = request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prebefood", "root","");
    Statement st = con.createStatement();
    ResultSet rs,rg;
    
    rs = st.executeQuery("select * FROM menu WHERE platillo='"+username+"';");
    rg = st.executeQuery("select * FROM gerentes WHERE username='"+username+"'and password='"+pwd+"';");
    /*if(rs.next()){
        session.setAttribute("username", username); //se le agrega un ID a la sesion llamado username
        response.sendRedirect("logueoExitoso.jsp");
        
    }*/ if(rg.next()){
        session.setAttribute("username",username);
        response.sendRedirect("gerente.jsp");
    } 
    
    else{
        //pasaremos a la parte de abajo
        System.out.println("nada");
        } %>
        <%=
        "Usuario incorrecto papá, <a href='index.jsp'> prueba de nuevo</a>" //redirecciona a index.jsp
        %>
    
