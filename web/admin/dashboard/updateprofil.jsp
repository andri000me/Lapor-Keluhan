<%-- 
    Document   : updateprofil
    Created on : Oct 7, 2016, 3:55:22 PM
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
            String nim = request.getParameter("txtnim");
            String nama = request.getParameter("txtnama");
            String jabatan = request.getParameter("slcjabatan");
            String nohp = request.getParameter("txtnohp");
                    try{
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement stm = conn.createStatement();
                    String sql = "update asisten set nama='"+nama+"', jabatan='"+jabatan+"', no_hp='"+nohp+"' "+
                                    "where nim_asisten='"+nim+"'";
                    stm.executeUpdate(sql);
                    conn.close();
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Berhasil merubah data profil!');");
           out.println("location='index.jsp';");
           out.println("</script>");
                }catch(Exception e){
                    out.print(e);
                }
                    %>
    </body>
</html>
