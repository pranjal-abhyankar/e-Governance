

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-1.6.1.min.js"></script>
        <script>
            $(document).ready(function(){
            $(window).load(function(){
            $.post("category.jsp", {queryString: ""+category+""}, function(data){
            $("select#category").html(data);
            });      }); }); 

            $(document).ready(function(){
            $("#image1").click(function(){
            var items=$("select#category").attr("value");
            $.post("items.jsp", {queryString: ""+items+""}, function(data){
            $("select#item").removeAttr("disabled");
            $("select#item").html(data);
                
            });
    
            }); });
          
            $(document).ready(function(){
            $("#image2").click(function(){
            var brand=$("select#item").attr("value");
            $.post("brand.jsp", {queryString: ""+brand+""}, function(data){
            $("select#brand").removeAttr("disabled");
            $("select#brand").html(data);
                
            });
    
            }); });
        </script>
    </head>
    <body>
        <table style=" color: black; width: 100%"> 
            
            <tr>
                <th style=" width: 33%">Category</th>
                <th></th>
                <th style=" width: 33%">Item</th>
                <th></th>
                <th style=" width: 33%">Brand</th>
            </tr>
            <tr>
                <td style=" width: 33%"><select class="form-control" size="20" style=" width: 100%; font-size: 15pt" id="category"></select></td>
                <td><a><img src="images/next.png" height="40" width="40" id="image1"></a></td>
                <td style=" width: 33%"><select class="form-control" size="20" style=" width: 100%; font-size: 15pt"  id="item" disabled></select></td>
                <td><a><img src="images/next.png" height="40" width="40" id="image2"></a></td>
                <td style=" width: 33%"><select class="form-control" size="20" style=" width: 100%; font-size: 15pt" id="brand" disabled></select></td>
            </tr>
          <!--  <tr>
                <td><input class="btn btn-outline btn-primary" type="submit" id="category"></td>
                <td></td>
                <td><input class="btn btn-outline btn-primary" type="submit" id="item"></td>
                <td></td>
                <td><input class="btn btn-outline btn-primary" type="submit" id="brand"></td>
            </tr> -->
            
        </table>
    </body>
</html>
