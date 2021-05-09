<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page errorPage="hata.jsp" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"><!--<![endif]-->
<head>


    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Ders Yönetim Sistemi</title>

    <meta name="author" content="themesflat.com">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Bootstrap  -->
    <link rel="stylesheet" type="text/css" href="stylesheets/bootstrap.css" >

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="stylesheets/style.css">

    <!-- Responsive -->
    <link rel="stylesheet" type="text/css" href="stylesheets/responsive.css">
    
    <!-- Colors -->
    <link rel="stylesheet" type="text/css" href="stylesheets/colors/color1.css" id="colors">
    
    <!-- Animation Style -->
    <link rel="stylesheet" type="text/css" href="stylesheets/animate.css">

    <!-- Favicon and touch icons  -->
    <link href="icon/apple-touch-icon-48-precomposed.png" rel="apple-touch-icon-precomposed" sizes="48x48">
    <link href="icon/apple-touch-icon-32-precomposed.png" rel="apple-touch-icon-precomposed">
    <link href="#" rel="shortcut icon">

    <!--[if lt IE 9]>
        <script src="javascript/html5shiv.js"></script>
        <script src="javascript/respond.min.js"></script>
    <![endif]-->


</head>

<body class="header-sticky">
        <div class="page-title full-color">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">                    
                        <div class="page-title-heading">
                            <h2 class="title">Eğitmen Ders Listesi</h2>
                        </div>
                        <div class="breadcrumbs">
                              <form action="<%=request.getContextPath()%>/logout" method="get">
                            
                            <div class="form-button">
                                <button id="submit" type="submit" class="btn btn-light" value="logout" >Çıkış</button> 
                            </div>
                        </form>                  
                        </div>                  
                    </div><!-- /.col-md-12 -->  
                </div><!-- /.row -->  
            </div><!-- /.container -->                      
        </div><!-- /page-title -->





                             
        </div><!-- /page-title -->

        <section class="flat-row padding-v1">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="course-list-table">
                            <div class="flat-all-course">
                               

                                <div class="courses-list">
                                    <table class="table course-list-table">
                                        <thead class="main-color-1-bg dark-div">
                                            <tr>
                                                <th>ID</th>
                                                <th>Ders Adı</th>
                                             
                                            </tr>
                                        </thead>
                                        <tbody>                          
                                            <tr>
                                                <td><a href="ogrenci-ders-icerik.jsp"></a><%
try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection bag = DriverManager.getConnection("jdbc:mysql://localhost:3306/dyp5","root","");
		Statement st = bag.createStatement();
		String sql = "SELECT * FROM ders where egitmenId=3;";
		ResultSet sonuc = st.executeQuery(sql);
		
		while (sonuc.next()){
			out.println(sonuc.getString("dersId"));
		}
		bag.close();
			}
			catch (Exception e){
			e.printStackTrace(); 
				}
%></td>
                                                <td><a href="ogrenci-ders-icerik.jsp"><%
try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection bag = DriverManager.getConnection("jdbc:mysql://localhost:3306/dys","root","");
		Statement st = bag.createStatement();
		String sql = "SELECT * FROM ders where egitmenId=3;";
		ResultSet sonuc = st.executeQuery(sql);
		
		while (sonuc.next()){
			out.println(sonuc.getString("dersAdi"));
		}
		bag.close();
			}
			catch (Exception e){
			e.printStackTrace(); 
				}
%></a></td>
                                                <td><a href="ogrenci-dokuman.jsp">Ders Dökümanları İçin Tıklayınız..</a></td>
                                                <td><a href="ogrenci-odev.jsp">Ders Ait Ödev Dosyası İçin Tıklayınız..</a></td> 
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
                            </div><!-- /flat-list-table -->


                        </div>
                    </div><!-- /col-md-9 -->

                  
                </div><!-- /row -->
            </div><!-- /container -->
        </section><!-- /page-title -->

                            

        <!-- Javascript -->
        <script type="text/javascript" src="javascript/jquery.min.js"></script>
        <script type="text/javascript" src="javascript/bootstrap.min.js"></script>
        <script type="text/javascript" src="javascript/jquery.easing.js"></script>
        
        <script type="text/javascript" src="javascript/owl.carousel.js"></script>
        <script type="text/javascript" src="javascript/parallax.js"></script>
        <script type="text/javascript" src="javascript/jquery.tweet.min.js"></script>
        <script type="text/javascript" src="javascript/jquery.matchHeight-min.js"></script>
        <script type="text/javascript" src="javascript/jquery-validate.js"></script>
        <script type="text/javascript" src="javascript/jquery-waypoints.js"></script>
        
        <script type="text/javascript" src="javascript/jquery.cookie.js"></script>
        <script type="text/javascript" src="javascript/main.js"></script>
    </div>
</body>
</html>