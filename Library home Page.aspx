<%@ Page Language="C#" %>
<%@ Import Namespace = "System.Data.SqlClient" %>
<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/theme.css">
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>

        <title>Welcome To ELibrary</title>
					<img src="img/elibrary.png" alt="ELibrary" height="100" width="350">
    </head>
    <body>
        <form id="form1" runat="server">
        <div>

<script>

$(function() {
    $( "#tabs" ).tabs();
});

</script>

<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Tab 1</a></li>
        <li><a href="#tabs-2">Tab 2</a></li>
        <li><a href="#tabs-3">Tab 3</a></li>
    </ul>
    <div id="tabs-1">Content 1</div>
    <div id="tabs-2">Content 2</div>
    <div id="tabs-3">Content 3</div>
</div>
        </form>
    </body>


    <script runat="server" language="C#">
      
	  
    </script>

</html>