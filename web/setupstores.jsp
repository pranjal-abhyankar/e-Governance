
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
<style>
#category,#item,#brand {
    list-style-type: none;
    margin: 0;
    padding: 0;
    float: left;
    margin-right: 10px;
    background: #eee;
    padding: 5px;
    width: 143px;
}

#category option,#item option,#brand option {
    margin: 5px;
    padding: 5px;
    font-size: 1.2em;
    width: 120px;
}
</style>
        <script>
            $(document).ready(function(){
            $(window).load(function(){
            $.post("Category", {queryString: ""+category+""}, function(data){
            $("select#category").html(data);
            });      }); }); 

            $(document).ready(function(){
            $("#image1").click(function(){
            var items=$("select#category").attr("value");
            $.post("items.jsp", {queryString: ""+items+""}, function(data){
            $("select#item").removeAttr("disabled");
            $("select#item").html(data);
            });
            $("input#itemname1").val(""+items+"");
            $("input#rcatid").val(""+items+"");
            }); });
          
            $(document).ready(function(){
            $("#image2").click(function(){
            var brand=$("select#item").attr("value");
            $.post("Brand", {queryString: ""+brand+""}, function(data){
            $("select#brand").removeAttr("disabled");
            $("select#brand").html(data);
                
            });
            $("input#brandname1").val(""+brand+"");
            $("input#ritemid").val(""+brand+"");
            }); });
            
            $(document).ready(function(){
            $("select#brand").click(function(){
               var brand2=$(this).attr("value"); 
               $("input#rbrandid").val(""+brand2+"");
            });
            });
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
                <td style=" width: 33%"><select class="form-control" size="10" style=" width: 100%; font-size: 10pt" id="category"></select></td>
                <td><a><img src="images/next.png" height="40" width="40" id="image1"></a></td>
                <td style=" width: 33%"><select class="form-control" size="10" style=" width: 100%; font-size: 10pt"  id="item" disabled></select></td>
                <td><a><img src="images/next.png" height="40" width="40" id="image2"></a></td>
                <td style=" width: 33%"><select class="form-control" size="10" style=" width: 100%; font-size: 10pt" id="brand" disabled></select></td>
            </tr>
           <!-- <tr>
                <td><input class="btn btn-outline btn-primary" type="submit" id="category"></td>
                <td></td>
                <td><input class="btn btn-outline btn-primary" type="submit" id="item"></td>
                <td></td>
                <td><input class="btn btn-outline btn-primary" type="submit" id="brand"></td>
            </tr> -->
           <tr><td>&nbsp;</td></tr>    
           <script>
                 $(document).ready(function(){
                 $("input#button1").click(function(){
                 $("table#1").toggle(1000);
                 }); 
                
                 $("input#button2").click(function(){
                 $("table#2").toggle(1000);
                });
                 
                 $("input#button3").click(function(){
                 $("table#3").toggle(1000);
                });
                
                $("input#button4").click(function(){
                  $("table#4").toggle(1000);
                });
                
                $("input#button5").click(function(){
                  $("table#5").toggle(1000);
                });
                
                $("input#button6").click(function(){
                  $("table#6").toggle(1000);
                });
               
            });
        </script>
        <!-- Add -->
        <tr><td>&nbsp;</td></tr>
            <tr>
             <td>
              <form method="post" action="AddCategory">
               <table width="100%" style=" color: black;">     
                <tr>
                   <td><input class="btn btn-outline btn-primary" type="button" id="button1" value="Add Category"></td>
                </tr>
               <tr>
                   <table id="1" border="2" hidden width="31%">
                   <tr><td><input class="form-control" type="text" name="catname" id="catname" size="58%" placeholder="Enter New Category"></td></tr>
                   <tr><td><input class="form-control" type="submit"></td></tr>
                   </table>
             </form>   
              </td>
              <td></td>
                <td>
                    <form method="post" action="AddItem">
                    <table style=" color: black;">     
               <tr>
                   <td><input class="btn btn-outline btn-primary" type="button" id="button2" value="Add Item"></td>
               </tr>
               
               <tr>
                   <table id="2" border="2" hidden twidth="31%">
                   <tr><td ><input class="form-control" type="text" name="itemname1" id="itemname1" size="58%" placeholder="category Id"></td></tr>    
                   <tr><td ><input class="form-control" type="text" name="itemname" id="itemname" size="58%" placeholder="Enter New Item"></td></tr>
                   <tr><td><input class="btn btn-outline btn-primary" type="submit" id="submit"></td></tr>
                   </table>
             
                   
                 </form>
                </td>
                <td></td>
                <td>
                    <form method="post" action="AddBrand">
            <table style=" color: black;">     
               <tr>
                   <td><input class="form-control" type="button" id="button3" value="Add Brand"></td>
               </tr>
               
               <tr>
                   
                   <table id="3" border="2" hidden width="31%">
                   <tr><td ><input class="form-control" type="text" name="brandname1" id="brandname1" size="58%" placeholder="item id" Id"></td></tr> 
                   <tr><td ><input class="form-control" type="text" name="brandname" id="brandname" size="58%" placeholder="Enter New Brand"></td></tr>
                   <tr><td ><input class="form-control" type="text" name="Quantity" id="Quantity" size="58%" placeholder="Enter quantity"></td></tr>
                   <tr><td ><input class="form-control" type="text" name="Unit" id="Unit" size="58%" placeholder="Enter unit"></td></tr>
                   <tr><td><input class="btn btn-outline btn-primary" type="submit"></td></tr>
                   </table>
                   
                </form>
                </td>
            </tr>
                 <!-remove --->       
            <tr>
             <td>
              <form method="post" action="RemoveCategory">
               <table width="100%" style=" color: black;">     
                   <tr>
                   <td><input class="btn btn-outline btn-primary" type="button" id="button4" value="Remove Category"></td>
                 </tr>
                 <tr>
                   <table id="4" border="2" hidden width="31%">
                   <tr><td ><input class="form-control" type="text" name="rcatid" id="rcatid" size="58%"></td></tr>
                   <tr><td><input class="form-control" type="submit"></td></tr>
                   </table>
              </form>   
            </td>  
            <td></td>
            <td>
             <form method="post" action="RemoveItem">
              <table style=" color: black;">     
                 <tr>
                   <td><input class="btn btn-outline btn-primary" type="button" id="button5" value="Remove Item"></td>
                 </tr>
                 <tr>
                <table id="5" border="2" hidden twidth="31%">
                   <tr><td ><input class="form-control" type="text" name="ritemid" id="ritemid" size="58%"></td></tr>
                   <tr><td><input class="form-control" type="submit" id="submit"></td></tr>
                </table>
             </form>
            </td>
                        <td></td>
             <td>
             <form method="post" action="RemoveBrand">
              <table style=" color: black;">     
                 <tr>
                   <td><input class="btn btn-outline btn-primary" type="button" id="button6" value="Remove Brand"></td>
                 </tr>
                 <tr>
                <table id="6" border="2" hidden twidth="31%">
                   <tr><td ><input class="form-control" type="text" name="rbrandid" id="rbrandid" size="58%"></td></tr>
                   <tr><td><input class="form-control" type="submit" id="submit"></td></tr>
                </table>
             </form>
            </td>
         </tr>
</table>
    </body>
</html>
