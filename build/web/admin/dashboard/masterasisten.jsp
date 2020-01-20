<%-- 
    Document   : masterasisten
    Created on : Oct 7, 2016, 5:46:17 PM
    Author     : RyfanAditya
--%>

<%@page import="java.sql.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Halo <%=session.getAttribute("nim_asisten")%> ! - Master Data Asisten</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>
    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />
    <!--  Fonts and icons     -->
    <link href="../../plugins/datatables/jquery.dataTables.min.css" type="text/css" rel="stylesheet">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <div class="sidebar" data-background-color="black" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    Pengaduan Online
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="masterasisten.jsp">
                        <i class="ti-save"></i>
                        <p>Master Data Asisten</p>
                    </a>
                </li>
                <li>
                    <a href="mastermahasiswa.jsp">
                        <i class="ti-save"></i>
                        <p>Master Data Mhs</p>
                    </a>
                </li>
                <li>
                    <a href="masterkategori.jsp">
                        <i class="ti-save"></i>
                        <p>Master Data Kategori</p>
                    </a>
                </li>
                <li>
                    <a href="index.jsp">
                        <i class="ti-panel"></i>
                        <p>Profile</p>
                    </a>
                </li>
                <li>
                    <a href="ubahprofil.jsp">
                        <i class="ti-user"></i>
                        <p>Ubah Profil</p>
                    </a>
                </li>
                <li>
                    <a href="ubahpw.jsp">
                        <i class="ti-settings"></i>
                        <p>Ganti Password</p>
                    </a>
                </li>
                <li>
                    <a href="listajuanlaporan.jsp">
                        <i class="ti-view-list-alt"></i>
                        <p>List Ajuan Laporan</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">Master Data Asisten</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                    <li>
                            <a href="logout.jsp"><i class="ti-settings"></i><p>&nbsp;Logout</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
            <%
            if ((session.getAttribute("nim_asisten") == null) || (session.getAttribute("nim_asisten") == "")) { 
            %>
            <%
            String redirectURL = "http://localhost:8084/PengaduanOnline/admin/";
	    response.sendRedirect(redirectURL);
            %>
            <%} else {
            %>
            <h3> List User Asisten</h3>
             <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/web_pengaduan"
        user="root" password="" />
            <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM asisten;
    </sql:query>
        <button type="button text-center" class="btn btn-primary" href="tambahasisten.jsp">Tambah Asisten</button>
        <table id="asisten" cellspacing="0" width="100%">
            <thead>
                <tr>
                <td>NIM</td>
                <td>Password</td>
                <td>Nama</td>
                <td>Jabatan</td>
                <td>No Handphone</td>
                <td>Aksi</td>
                </tr>
            </thead>
            <tfoot>
                <tr>
                <td>NIM</td>
                <td>Password</td>
                <td>Nama</td>
                <td>Jabatan</td>
                <td>No Handphone</td>
                <td>Aksi</td>
                </tr>
            </tfoot>
            <c:forEach var="user" items="${listUsers.rows}">
                <tbody>
                <tr>
                    <td><c:out value="${user.nim_asisten}" /></td>
                    <td><c:out value="${user.password}" /></td>
                    <td><c:out value="${user.nama}" /></td>
                    <td><c:out value="${user.jabatan}" /></td>
                    <td><c:out value="${user.no_hp}" /></td>
                    <td><a href="ubahasisten.jsp?nim=<c:out value="${user.nim_asisten}" />">Ubah</a> | <a href="hapusasisten.jsp?nim=<c:out value="${user.nim_asisten}" />">Delete</a></td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
            <%
            }
            %>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                            <a href="http://www.creative-tim.com">
                                Creative Tim
                            </a>
                        </li>
                        <li>
                            <a href="http://blog.creative-tim.com">
                               Blog
                            </a>
                        </li>
                        <li>
                            <a href="http://www.creative-tim.com/license">
                                Licenses
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="http://www.creative-tim.com">Creative Tim</a>
                </div>
            </div>
        </footer>

    </div>
</div>
</body>
        <!--   Core JS Files   -->
        <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

        <!--  Google Maps Plugin    -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

        <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>
        <script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript">
	    $(document).ready(function() {
	    $('#asisten').dataTable({
	        "bPaginate": true,
	        "bLengthChange": false,
	        "bFilter": true,
	        "bInfo": true,
	        "bAutoWidth": true });
	    });
        </script>
</html>
