<%-- 
    Document   : proseslogin
    Created on : Oct 7, 2016, 4:29:04 PM
    Author     : RyfanAditya
--%>

<%@page import="java.sql.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    String userid = request.getParameter("nim");    
    String pwd = request.getParameter("password");
    
    Koneksi konek = new Koneksi();
    Connection conn = konek.bukaKoneksi();
    Statement stm = conn.createStatement();
    ResultSet rs;
    rs = stm.executeQuery("select nim_asisten,password from asisten where nim_asisten='"+userid+"' and password='"+pwd+"'");
    if (rs.next()) {
        session.setAttribute("nim_asisten", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("./dashboard/index.jsp");
    } else {
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Username atau password Salah');");
           out.println("location='index.jsp';");
           out.println("</script>");
    }
%>
    </body>
</html>
