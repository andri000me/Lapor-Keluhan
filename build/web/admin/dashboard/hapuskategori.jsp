<%-- 
    Document   : hapuskategori
    Created on : Oct 20, 2016, 11:47:09 PM
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
            String id = request.getParameter("id_kategori");
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement stm = conn.createStatement();
                    String sql2 = "delete from kategori where id_kategori='"+id+"'";
                    stm.executeUpdate(sql2);
                    conn.close();
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Data kategori berhasil dihapus!');");
           out.println("location='masterkategori.jsp';");
           out.println("</script>");
                }catch(Exception e){
                    out.print(e);
                }
        %>
    </body>
</html>
