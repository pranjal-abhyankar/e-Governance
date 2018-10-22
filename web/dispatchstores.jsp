

<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="content-type" content="text/html; charset=utf-8">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
  <script src="js/jquery-1.11.0.js"></script>
  <script src="js/jquery-1.6.1.min.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <script>
            var brand2;
            var items;
            var brand;
            $(document).ready(function(){
            $(window).load(function(){
            $.post("Category", {queryString: ""+category+""}, function(data){
            $("select#category").html(data);
            });      }); }); 

            $(document).ready(function(){
            $("#image1").click(function(){
            items=$("select#category").attr("value");
            //$("#cat_form").val(""+items+"");
            $.post("items.jsp", {queryString: ""+items+""}, function(data){
            $("select#item").removeAttr("disabled");
            $("select#item").html(data);
                
            });
    
            }); });
          
            $(document).ready(function(){
            $("#image2").click(function(){
            brand=$("select#item").attr("value");
            //$("#item_form").val(""+brand+"");  
            $.post("Brand", {queryString: ""+brand+""}, function(data){
            $("select#brand").removeAttr("disabled");
            $("input#submit").removeAttr("disabled");
            $("select#brand").html(data);
                
            });
    
            });
               $("select#brand").click(function(){
               brand2=$(this).attr("value"); 
             // brand_name=$("option#"+brand2+"").attr("id");
              //brand_name = "option#"+brand2;
              //alert(brand_name);
              $("input#rbrandid").val(""+brand2+"");
              
              //$("#branch_form").val(""+brand2+"");
            });
            
          $("input#submit").click(function(){
              $("table#parent").hide(1000);
              $("div#child").show(1000);
              $.post("dispatchstoresform.jsp",
              {
                  cat_id:items,
                  item_id:brand,
                  brand_id:brand2
              },function(data){            
                  $("tr#display").html(data);
                });
                $("input#hidden").val(brand2);
                
           });
          });
              
          
           
            
        </script>
    </head>
    <body>
        <div id="child" style=" width:100%; height: 100%" hidden>
            <form action="RemoveQuantity" method="post">
                <input type="text" name="hidden" id="hidden" hidden="" >
                <table style= "color:black"align="center">
                     <tr>
                      <th>Category</th>
                      <th>Item</th>
                      <th>Brand</th>
                      <th>Quantity</th>
                      <th>Unit</th>
                       </tr>
                       
                    <tr id="display">  
                    </tr>
                    
                    <tr><td>&nbsp;</td></tr>
                    <tr><td>&nbsp;</td></tr>
                    <tr>
                        <td>&nbsp;</td>
                        <th>Remove</th>
                        <td><input class="form-control" name="quantity" type="text" placeholder="Quantity"></td>
                        <td><input class="form-control" name="unit" type="text" placeholder="Unit"</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><input class="btn btn-outline btn-primary" type="submit"></td>
                    </tr>
                </table>
            </form>
        </div>
            <table style=" color: black; width: 100%" id="parent"> 
            
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
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><input class="btn btn-outline btn-primary"  type="submit" id="submit" disabled></td>
            </tr>
            
        </table>
      
    </body>
</html>