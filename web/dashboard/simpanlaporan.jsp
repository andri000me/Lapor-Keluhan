<%-- 
    Document   : simpanlaporan
    Created on : Oct 20, 2016, 9:11:39 PM
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
            String kd     = request.getParameter("txtkd");
            String nim      = request.getParameter("txtnim");
            String nama     = request.getParameter("txtnama");
            String tgl      = request.getParameter("txttgl");
            String kategori = request.getParameter("slckategori");
            String nm_barang = request.getParameter("txtbarang");
            String isi = request.getParameter("areaPesan");
            try{
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement stm = conn.createStatement();
                    String sql = "insert into laporan(nim_mhs,nama,tgl_laporan,kategori,nama_barang,isi_laporan) "+
                            "value ('"+nim+"','"+nama+"','"+tgl+"','"+kategori+"','"+nm_barang+"','"+isi+"')";
                    stm.executeUpdate(sql);
                    conn.close();
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Laporan berhasil dikirim!');");
           out.println("location='listajuanlaporan.jsp';");
           out.println("</script>");
                }catch(Exception e){
                    out.print(e);
                }
            %>
    </body>
</html>
