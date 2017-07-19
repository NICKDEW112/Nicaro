<%@ Page Language="C#" %>
<%@ Import Namespace = "System.Data.SqlClient" %>
<!DOCTYPE html>
<html lang="en">
    <head>
	<title> LIbrary </title>
		<meta charset="utf-8">
		<link href="css/style1.css" rel="stylesheet" type ="text/css"></link>
    </head>
	<body>
	
<ul>
<li><a href="Fiction.aspx">Fiction</a></li>
<li><a href="Non Fiction.aspx">Non Fiction</a></li>
<li><a href="science.aspx">Science</a></li>
<li><a href="Art.aspx">Art</a></li>
<li><a href="Return.aspx">Return Books</a></li>
</ul><br/>
<br/>

	<div Id ="Fiction">
	<h2> Fiction </h2>
	<img src="fic1.jpg" alt="ELibrary" height="150" width="170">
    <img src="fic2.jpg" alt="ELibrary" height="150" width="170">
	<img src="fic3.jpg" alt="ELibrary" height="150" width="170">
	<img src="fic4.jpg" alt="ELibrary" height="150" width="170">
	</div>
	
	<div Id ="Non Fiction">
	<h2> Non Fiction </h2>
	<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
    <img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
	<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
	<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
	</div>
	
	<div Id ="Science">
	<h2> Science </h2>
	<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
    <img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
	<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
	<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
	</div>
	
	<div Id ="Art">
	<h2> Art </h2>
	<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
    <img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
	<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
	<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
	</div>
	
    </body>


    <script runat="server" language="C#">
      
	  
    </script>

</html>



