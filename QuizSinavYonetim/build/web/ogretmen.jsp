<%-- 
    Document   : ogretmen
    Created on : 16.Oca.2022, 16:54:34
    Author     : kursa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.database"%>
<%@page import="veriler.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="StyleSheet/ogrenci.css" type="text/css" rel="stylesheet"/>
        <title>ÖĞRETMEN GİRİŞİ</title>
</head>
<body>
    <center>

        <div class="d-üst">
            <h1>ÖĞRETMEN GİRİŞİ</h1>
        </div>

    <div id="formdiv">
        <form action="">
            <input id="kullaniciadi" type="text" name="kullaniciadi" placeholder="Kullanıcı Adı"/><br>
            <input id="sifre" type="password" name="sifre" placeholder="Şifre"/><br>
            <button id="giris" type="submit" name="giris" style="margin-top:10px;">Giriş</button>
        </form>
    </div>
    </center>
<%
            database dt = new database();
            String kullaniciadi = request.getParameter("kullaniciadi");
            String sifre = request.getParameter("sifre");
            String giris  = request.getParameter("giris");
             if(giris != null){
                      if (dt.KontrolOgretmen(kullaniciadi, sifre)) {
                                response.sendRedirect("denemeogretmen.jsp");
                            }
                      else{
                          System.out.println("GİRİŞ BİLGİLERİ SIKINTILI");
                      }
                  }
%>
</body>
</html>
