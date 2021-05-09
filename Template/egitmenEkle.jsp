<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page errorPage="hata.jsp" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"><!--<![endif]-->
<head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eğitmen Ekle</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-theme24.css">

</head>

<body class="header-sticky">
        <div class="page-title full-color">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">                    
                                    
                    </div><!-- /.col-md-12 -->  
                </div><!-- /.row -->  
            </div><!-- /.container -->                      
        </div><!-- /page-title -->

        <section class="flat-row padding-v1">
            <div class="form-body on-top">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <form action="egitmenEkleConn.jsp">
                            <div class="row">
                                <div class="col-12 col-sm-6">
                                    <input type="text" class="form-control" name="id" id="id" placeholder="Egitmen Id">
                                </div>
                                <div class="col-12 col-sm-6">
                                    <input type="text" class="form-control" name="ad" id="ad" placeholder="Egitmen Adı">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-sm-6">
                                    <input type="text" class="form-control" name="soyad" id="soyad" placeholder="Egitmen Soyad">
                                </div>
                                 <div class="col-12 col-sm-6">
                                    <input type="text" class="form-control" name="no" id="no" placeholder="Egitmen No">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-sm-6">
                                    <input type="text" class="form-control" name="sifre" id="sifre" placeholder="Egitmen Sifre">
                                </div>
                                 <div class="col-12 col-sm-6">
                                    <input type="text" class="form-control" name="did" id="did" placeholder="Ders Id">
                                </div>
                            </div>
                          
                            <div class="row top-padding">
                                <div class="col-12 col-sm-6">
                                    <div class="form-button text-right">
                                        <button id="submit" type="submit" class="ibtn less-padding" value="gonder">Kaydet</button>
                                                                               
                                    </div>
                                </div>
                            </div>

                                    

                        </form>
                    </div>
                </div>
            </div>
        </div>
        </section><!-- /page-title -->

                            

        <!-- Javascript -->
       <script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>