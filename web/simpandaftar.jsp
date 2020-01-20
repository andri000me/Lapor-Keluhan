<%-- 
    Document   : simpandaftar
    Created on : Oct 6, 2016, 6:53:51 PM
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
            String nim      = request.getParameter("txtnim");
            String pass     = request.getParameter("txtpassword");
            String nama     = request.getParameter("txtnama");
            String jurusan  = request.getParameter("slcjurusan");
            String nohp     = request.getParameter("txtnohp");
            try{
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement stm = conn.createStatement();
                    String sql = "insert into mahasiswa(nim_mhs,password,nama,jurusan,no_hp) "+
                            "value ('"+nim+"','"+pass+"','"+nama+"','"+jurusan+"','"+nohp+"')";
                    stm.executeUpdate(sql);
                    conn.close();
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Pendaftaran Berhasil! Silahkan masuk menggunakan NIM dan Password');");
           out.println("location='index.jsp';");
           out.println("</script>");
                }catch(Exception e){
                    out.print(e);
                }
            %>
    </body>
</html>
