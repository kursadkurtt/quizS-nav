<%-- 
    Document   : denemeogretmen
    Created on : 19.Oca.2022, 23:17:18
    Author     : kursa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.database"%>
<%@page import="veriler.ogrenciler"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="StyleSheet/denemeogretmen.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <div class="cizgi">
    <h1 class="baslik">SINAVA GİRİŞ</h1>
    
<div class="info">
    <img class="icon" src="ticon.png" alt="icon">
        
        <div class="info1" >
            <p>AHMET GÜRKAN</p>
            <p>YÜKSEK</p>
        </div>
        
</div>
    <form action="index.jsp">
            <button class="cikis" type="submit" name="cikis">ÇIKIŞ</button> 
        </form>
   
</div>

<div class="orta">
    <form action="">
    <label>soru</label> 
    <input name="soru" type="text"/>
    <label>soyisim</label>
    <input name="soyisim" type="text"/>
    <label>tc</label>
    <input name="tc" type="text"/>
    <label>ogrencino</label>
    <input name="ogrencino" type="text"/>
    <label>dogumtarih</label>
    <input name="dogumtarih" type="text"/>
    <label>sifre</label>
    <input name="sifre" type="text"/>
    <button type="submit" name="kaydet">kaydet</button>
    
    
    <textarea id="w3review" name="soru" rows="4" cols="50">

  </textarea>

<%
                String isim =request.getParameter("isim");
                String soyisim =request.getParameter("soyisim");
                String tc =request.getParameter("tc");
                String ogrencino =request.getParameter("ogrencino");
                String dogumtarih =request.getParameter("dogumtarih");
                String sifre =request.getParameter("sifre");
                String kaydet = request.getParameter("kaydet");
                
                ogrenciler ogrenci = new ogrenciler(isim, soyisim, tc, ogrencino, dogumtarih, sifre);
                database dt = new database();
                if(kaydet != null){
                    if (!isim.equals("") && !soyisim.equals("")&& !tc.equals("")&& !ogrencino.equals("")
                            && !dogumtarih.equals("")&& !sifre.equals("")) {
                        dt.insertOgrenci(ogrenci);
                    }
                }
%>
<table id="personel_tablo">
                    <tr>
                        <th>isim</th>
                        <th>soyisim</th>
                        <th>tc</th>
                        <th>ogrencino</th>
                        <th>dogumtarih</th>
                        <th>sifre</th>
                    </tr>
               <%
                  database database =  new database();
                  ResultSet result = database.ogrenciTablo();
                while (result.next()) {
                        out.print("<tr>");
                        out.print("<td>" + result.getString("isim")+"</td>" );
                        out.print("<td>" + result.getString("soyisim")+"</td>");
                        out.print("<td>" + result.getString("tc")+"</td>");
                        out.print("<td>" + result.getString("ogrencino")+"</td>");
                        out.print("<td>" + result.getString("dogumtarih")+"</td>");
                        out.print("<td>" + result.getString("sifre")+"</td>");
                       %>
                        <td><a href="denemeogretmen.jsp?id=<%= result.getString("id")%>">Bilgileri Sil</a></td>
                        <td><a href="denemeogretmen.jsp?edit=<%= result.getString("id")%>">Güncelle</a></td>
                       <%
                        out.print("<tr>");
                    }
                        HttpSession oturum = request.getSession(true);
                        String sil = request.getParameter("id");
                        String guncelle = request.getParameter("edit");
                        oturum.setAttribute("edit", guncelle);
                        
                        if(sil != null){
                            database.ogrencisil(Integer.valueOf(sil));
                            response.sendRedirect("denemeogretmen.jsp");
                        }
                        if(guncelle != null){
                           response.sendRedirect("ogrenciguncelle1.jsp");
                        }
              %>



              </table>
</div>
</body>
</html>
