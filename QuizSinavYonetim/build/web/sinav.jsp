<%-- 
    Document   : sınav
    Created on : 20.Oca.2022, 00:57:11
    Author     : kursa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="StyleSheet/sinav.css" type="text/css" rel="stylesheet"/>
    <title>JSP Page</title>
</head>
<body>
  
    
    
    <div class="soru">
        <p id="s-iç">
            1) aşağıdakilerden hangisi türkiyenin en büyük ilidir ?
        </p>
    </div>
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


    <div class="şıklar">
        <center>
        <label>
            <input id="a" type="checkbox" class="radio" value="1" name="fooby[1][]" />samsun</label>
        <label>
            <input id="a" type="checkbox" class="radio" value="1" name="fooby[1][]" />istanbul</label>
        <label>
            <input id="a" type="checkbox" class="radio" value="1" name="fooby[1][]" />antep</label>
        <label>
            <input id="a" type="checkbox" class="radio" value="1" name="fooby[1][]" />konya</label>
        </center> 
    </div>
    
    <div class="sag-panel">
    <center>
        <form class="iç1" action="" method="get">
            <input id="yonetici_btn" type="submit" value="SONRAKİ SORU" />
        </form>

        <div class="info">
            <br>
            <p>YUSUF FIRAT</p>
            <p>SİVAS CUMHURİYET ÜNİVERSİTESİ 2022-2023 ÖĞRETİM YILI VİZE SINAVI</p>
        </div>
    </center>
    </div>
    <script>
       // the selector will match all input controls of type :checkbox
// and attach a click event handler 
$("input:checkbox").on('click', function() {
  // in the handler, 'this' refers to the box clicked on
  var $box = $(this);
  if ($box.is(":checked")) {
    // the name of the box is retrieved using the .attr() method
    // as it is assumed and expected to be immutable
    var group = "input:checkbox[name='" + $box.attr("name") + "']";
    // the checked state of the group/box on the other hand will change
    // and the current value is retrieved using .prop() method
    $(group).prop("checked", false);
    $box.prop("checked", true);
  } else {
    $box.prop("checked", false);
  }
});
    </script>
</body>
</html>
