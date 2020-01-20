<%-- 
    Document   : index
    Created on : Oct 5, 2016, 9:20:08 AM
    Author     : RyfanAditya
--%>

<%@page import="java.sql.*" %>
<%@page import="jdbc.Koneksi" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!doctype html>
<html lang="en">
  <head>  	
    <meta charset="utf-8">
    <meta name="description" content="Responsive Bootstrap Landing Page Template">
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="author" content="Grayrids">
    <title>Pengaduan Online - Aplikasi Pengaduan Barang Tertinggal Budi Luhur</title>
    <link href="bootstrap-home/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="fonts/font-awesome.min.css" type="text/css" media="screen">
    <!-- Include roboto.css to use the Roboto web font, material.css to include the theme and ripples.css to style the ripple effect -->
    <link href="bootstrap-home/css/material.min.css" rel="stylesheet">
    <link href="bootstrap-home/css/ripples.min.css" rel="stylesheet">
    <link href="bootstrap-home/css/main.css" rel="stylesheet">
    <link href="bootstrap-home/css/responsive.css" rel="stylesheet">
    <link href="bootstrap-home/css/animate.min.css" rel="stylesheet">
  </head>
  <body>
    <div class="navbar navbar-invers menu-wrap">
      <div class="navbar-header text-center">
        <a class="navbar-brand logo-right" href="javascript:void(0)">Pengaduan Online</a>
      </div>
        <ul class="nav navbar-nav main-navigation">
          <li class="active"><a href="#home">Beranda</a></li>
          <li><a href="#features">Daftar</a></li>
		  <li><a href="#features">Masuk</a></li>
          <li><a href="#features">Ajukan Pengaduan</a></li>
          <li><a href="#contact">Kontak Kami</a></li>
        </ul>
        <button class="close-button" id="close-button">Close Menu</button>
    </div>
    <div class="content-wrap">
     <header class="hero-area" id="home"> 
      <div class="container">
          <div class="col-md-12">
            <div class="navbar navbar-inverse sticky-navigation navbar-fixed-top" role="navigation" data-spy="affix" data-offset-top="200">
              <div class="container">
                <div class="navbar-header">
                  <a class="logo-left " href="index.jsp"><i class="mdi-image-timelapse"></i>Pengaduan Online</a>
                </div>
                <div class="navbar-right">
                  <button class="menu-icon"  id="open-button">
                    <i class="mdi-navigation-menu"></i>
                  </button>             
                </div>
              </div>
            </div>
        </div>
          <!-- Daftar -->
          <div class="modal fade" id="daftar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-sm" role="document">
               <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="myModalLabel" style="color:black;">Daftar Sebagai Mahasiswa</h4>
            </div>
            <div class="modal-body">
                <form method="post" action="simpandaftar.jsp">
                <div class="form-group">
                    <input class="form-control" name="txtnim"
    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    type = "number"
    maxlength = "10" required placeholder="NIM"/>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" name="txtpassword" placeholder="Password" required>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="txtnama" placeholder="Nama" required>
                </div>
                <div class="form-group">
                <select class="form-control" name="slcjurusan" required="required">
                <option>Pilih Jurusan</option>
                <option value="Teknik Informatika">Teknik Informatika</option>
                <option value="Sistem Informasi">Sistem Informasi</option>
                <option value="Sistem Komputer">Sistem Komputer</option>
                </select>
                </div>
                <div class="form-group">
<input class="form-control" name="txtnohp"
    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    type = "number"
    maxlength = "12" required placeholder="No Handphone"/>
                </div>
                    <center><input type="submit" name="cmddaftar" value="DAFTAR" class="btn btn-primary"></center>
              </form>
            </div>
            </div>
          </div>
        </div>
        <!-- /Daftar -->
        <!-- Login -->
        <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title" id="myModalLabel" style="color:black;">Masuk dan Laporkan!</h4>
                    </div>
            <div class="modal-body">
                <form action="login.jsp" method="post">
                <div class="form-group">
<input class="form-control" name="nim"
    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    type = "number"
    maxlength = "10" required placeholder="NIM"/>                </div>
                <div class="form-group">
                  <input type="password" class="form-control" name="password" placeholder="Password" required>
                </div>
              <center><button type="button text-center" class="btn btn-primary">Login</button></center>
              </form>
            </div>
            </div>
          </div>
        </div>
        <!-- /Login -->
        <div class="contents text-right">
          <h1 class="wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="300ms">Kirim laporan barang tertinggal melalui situs ini</h1>
          <p class="wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="400ms">Membantu warga kampus budi luhur</p>
          <button type="button" class="btn btn-lg btn-primary wow fadeInUp" data-toggle="modal" data-target="#daftar" data-wow-duration="1000ms" data-wow-delay="400ms">Daftar sebagai mahasiswa</button>
          <button type="button" class="btn btn-lg btn-border wow fadeInUp" data-toggle="modal" data-target="#login" data-wow-duration="1000ms" data-wow-delay="400ms">Kirim Laporan Sekarang!</button>
        </div>   
    </header>
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-md-6 wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2 class="section-title">That's Where We Are</h2>
            <div class="row">
              <div class="col-md-6 col-sm-6">
                <div class="info">
                  <div class="icon">
                    <i class="mdi-maps-map"></i>
                  </div>
                  <h4>Location</h4>
                  <p>LAB ICT Terpadu Universitas Budi Luhur</p>
                </div>
              </div>
              <div class="col-md-6 col-sm-6">
                <div class="info">
                  <div class="icon">
                    <i class="mdi-content-mail"></i>
                  </div>
                  <h4>Email</h4>
                  <p>labkom@budiluhur.ac.id</p>
                </div>
              </div>
              <div class="clear"></div>
              <div class="col-md-6 col-sm-6">
                <div class="info">
                  <div class="icon">
                    <i class="mdi-action-settings-phone"></i>
                  </div>
                  <h4>Phone Number</h4>
                  <p>0812 7076 1580</p>
                </div>
              </div>
              <div class="col-md-6 col-sm-6">
                <div class="info">
                  <div class="icon">
                    <i class="mdi-action-thumb-up"></i>
                  </div>
                  <h4>Social Media</h4>
                  <p>@LABICTUBL</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2 class="section-title">Love to Hear From You</h2>
            <!-- Form -->
            <form class="contact-form" role="form" method="post">
              <i class="mdi-action-account-box"></i>
              <input type="text" class="form-control" name="name" placeholder="Nama">
            
              <i class="mdi-content-mail"></i>
              <input type="email" class="form-control" name="EMAIL" placeholder="Email">                  
                                    
              <textarea class="form-control" placeholder="Message" rows="4"></textarea>              
              <button type="submit" id="submit" class="btn btn-lg btn-primary">Kirim Pesan</button>
              <div id="success" style="color:#3F51B5;">
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>    

    <section id="footer">
      <div class="container">
        <div class="container">
          <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
              <h3>Products</h3>
              <ul>
                <li><a href="http://wingthemes.com/">WingThemes</a>
                </li>
                <li><a href="http://graygrids.com/">Graygrids</a>
                </li>
                <li><a href="http://wpbean.com/">WPBean</a>
                </li>
                <li><a href="http://landingbow.com/">Landingbow</a>
                </li>
                <li><a href="http://freebiescircle.com/">FreebiesCicle</a>
                </li>               
              </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <h3>FAQs</h3>
              <ul>
                <li><a href="#">Why choose us?</a>
                </li>
                <li><a href="#">Where we are?</a>
                </li>
                <li><a href="#">Fees</a>
                </li>
                <li><a href="#">Guarantee</a>
                </li>
                <li><a href="#">Discount</a>
                </li>
              </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <h3>About</h3>
              <ul>
                <li><a href="#">Career</a>
                </li>
                <li><a href="#">Partners</a>
                </li>
                <li><a href="#">Team</a>
                </li>
                <li><a href="#">Clients</a>
                </li>
                <li><a href="#">Contact</a>
                </li>
              </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <h3>Find us on</h3>
              <a class="social" href="#" target="_blank"><i class="fa fa-facebook"></i></a>
              <a class="social" href="#" target="_blank"><i class="fa fa-twitter"></i></a>
              <a class="social" href="#" target="_blank"><i class="fa fa-google-plus"></i></a>
            </div>
          </div>
        </div>  
      </div>      
      <!-- Go to Top Link -->
      <a href="#home" class="btn btn-primary back-to-top">
      <i class=" mdi-hardware-keyboard-arrow-up"></i>
      </a>
    </section> 
    <section id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <p class="copyright-text">
             © Pengaduan Online. All right reserved. Designed and Developed by 
              <a href="http://graygrids.com/">
                GrayGrids
              </a>. Built with JAVA SERVER PAGES.
            </p>
          </div>
        </div>
      </div>
    </section>     
    </div>  
    <script src="bootstrap-home/js/jquery-2.1.4.min.js"></script>
    <script src="bootstrap-home/js/bootstrap.min.js"></script>
    <script src="bootstrap-home/js/ripples.min.js"></script>
    <script src="bootstrap-home/js/material.min.js"></script>
    <script src="bootstrap-home/js/wow.js"></script>
    <script src="bootstrap-home/js/jquery.mmenu.min.all.js"></script> 
    <script src="bootstrap-home/js/count-to.js"></script>   
    <script src="bootstrap-home/js/jquery.inview.min.js"></script>     
    <script src="bootstrap-home/js/main.js"></script>
    <script src="bootstrap-home/js/classie.js"></script>
    <script src="bootstrap-home/js/jquery.nav.js"></script>      
    <script src="bootstrap-home/js/smooth-on-scroll.js"></script>
    <script src="bootstrap-home/js/smooth-scroll.js"></script>
    

    <script>
        $(document).ready(function() {
            // This command is used to initialize some elements and make them work properly
            $.material.init();
        });
    </script>

  </body>

</html>

