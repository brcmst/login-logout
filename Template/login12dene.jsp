<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page errorPage="hata.jsp" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ders Yönetim Sistemi</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-theme12.css">
</head>
<body>


    <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                    
          



                       
                        <h3>Ders Yönetim Sistemi</h3>
                        
                        
                        
                        <div class="page-links">
                            <a href="login12.jsp" class="active">Öğrenci</a>
                            
                            
                            
                            <a href="login12-1.jsp">Eğitmen</a>
                            <a href="login12-2.jsp">Yönetici</a>
                        </div>
                        <form action="<%=request.getContextPath()%>/login" method="post">
                            <input class="form-control" type="text" name="ogrenciNo" placeholder="Numara" required>
                            <input class="form-control" type="password" name="ogrenciSifre" placeholder="Şifre" required>
                            <div class="form-button">
                                <button id="submit" type="submit" class="ibtn" value="login" >Giriş</button> 
                            </div>
                        </form>
                        
                        <div classs="container p-5">
	
<div class="row no-gutters">
	<div class="alert alert-primary shadow" role="alert" style="border-left:#1592E6 5px solid; border-radius: 0px">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true" style="color:#1592E6">&times;</span>
		</button>
		<div class="row">
			<svg width="1.25em" height="1.25em" viewBox="0 0 16 16" class="m-1 bi bi-bell-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			  <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
			</svg>
		  	<p style="font-size:17px" class="mb-0 font-weight-light"><b class="mr-1">Hata:</b> Hatalı bilgi girişi yapıldı. Tekrar deneyiniz.</p>
		</div>
	</div>


</div>
                        
                       
                    </div> 
                </div>
            </div>
        </div>
    </div>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>