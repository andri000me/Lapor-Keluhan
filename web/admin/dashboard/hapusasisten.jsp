<%-- 
    Document   : hapusasisten
    Created on : Oct 7, 2016, 10:57:22 PM
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
        try{
            String nim = request.getParameter("nim");
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement stm = conn.createStatement();
                    String sql2 = "delete from asisten where nim_asisten='"+nim+"'";
                    stm.executeUpdate(sql2);
                    conn.close();
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Berhasil menghapus data Asisten!');");
           out.println("location='masterasisten.jsp';");
           out.println("</script>");
                }catch(Exception e){
                    out.print(e);
                }
        %>
    </body>
</html>
