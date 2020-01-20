<%-- 
    Document   : ubahprofil
    Created on : Oct 7, 2016, 1:42:15 PM
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
	<title>Ubah Profil - Pengaduan Online</title>
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
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <div class="sidebar" data-background-color="white" data-active-color="danger">

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
                <li>
                    <a href="index.jsp">
                        <i class="ti-panel"></i>
                        <p>Profile</p>
                    </a>
                </li>
                <li class="active">
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
                    <a class="navbar-brand" href="#">Ubah Profil</a>
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
            if ((session.getAttribute("nim_mhs") == null) || (session.getAttribute("nim_mhs") == "")) { 
            %>
            <%
            String redirectURL = "http://localhost:8084/PengaduanOnline/index.jsp";
	    response.sendRedirect(redirectURL);
            %>
            <%} else {
            %>
            <h3>Ubah Profil Anda!</h3>
            <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/web_pengaduan"
        user="root" password="" />
            
            <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM mahasiswa WHERE nim_mhs="<%=session.getAttribute("nim_mhs")%>";
    </sql:query>
    
        <form method="post" action="updateprofil.jsp">
                <c:forEach var="user" items="${listUsers.rows}">
                <div class="form-group">
                    <input type="text" class="form-control" name="txtnim" maxlength="10" placeholder="NIM" value="<c:out value="${user.nim_mhs}"/>" readonly>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="txtnama" placeholder="Nama" value="<c:out value="${user.nama}"/>">
                </div>
                <div class="form-group">
                <select class="form-control" name="slcjurusan">
                <option selected="<c:out value="${user.jurusan}"/>" readonly><c:out value="${user.jurusan}"/></option>
                <option value="Teknik Informatika">Teknik Informatika</option>
                <option value="Sistem Informasi">Sistem Informasi</option>
                <option value="Sistem Komputer">Sistem Komputer</option>
                </select>
                </div>
                <div class="form-group">
                  <input type="number" class="form-control" name="txtnohp" placeholder="No Handphone" value="<c:out value="${user.no_hp}"/>">
                </div>
                    <center><input type="submit" name="cmdubah" value="Ubah Profil" class="btn btn-primary"></center>
                    </c:forEach>
              </form>
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

</html>
