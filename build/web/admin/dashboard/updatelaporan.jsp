<%-- 
    Document   : updatelaporan
    Created on : Oct 21, 2016, 12:56:09 AM
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
            String status = request.getParameter("slcstatus");
            try{
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement stm = conn.createStatement();
                    String sql = "update laporan set nim_mhs='"+nim+"',nama='"+nama+"', tgl_laporan='"+tgl+"', nama_barang='"+nm_barang+"', isi_laporan='"+isi+"', status='"+status+"' "+
                                    "where kode_laporan='"+kd+"'";
                    stm.executeUpdate(sql);
                    conn.close();
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Laporan berhasil diubah!');");
           out.println("location='listajuanlaporan.jsp';");
           out.println("</script>");
                }catch(Exception e){
                    out.print(e);
                }
            %>
    </body>
</html>
