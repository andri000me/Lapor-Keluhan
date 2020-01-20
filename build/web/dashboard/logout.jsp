<%-- 
    Document   : logout
    Created on : Oct 7, 2016, 3:51:23 PM
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
session.setAttribute("nim_mhs", null);
session.invalidate();
response.sendRedirect("/PengaduanOnline/index.jsp");
%>
    </body>
</html>
