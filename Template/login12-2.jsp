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
                            <a href="login12.jsp">Öğrenci</a>
                            <a href="login12-1.jsp">Eğitmen</a>
                            <a href="login12-2.jsp" class="active">Yönetici</a>
                        </div>
                        <form action="<%=request.getContextPath()%>/loginyonetici" method="post">
                            <input class="form-control" type="text" name="yoneticiAd" placeholder="Kullanıcı Adı" required>
                            <input class="form-control" type="password" name="yoneticiSifre" placeholder="Şifre" required>
                            <div class="form-button">
                                <button id="submit" type="submit" class="ibtn" >Giriş</button>
                            </div>
                        </form>
                       
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