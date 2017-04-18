<!DOCTYPE html>
<%@ Import Namespace = "System.Data.SqlClient" %>

<html>
<title>Login</title>
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" type="text/css" href="css/theme.css">
		</head>
		
<body>
<form runat="server" class="Form1">
	<div class="login" align='center'>
			<img src="img/elibrary.png" alt="ELibrary" height="150" width="170">
			
			 <asp:TextBox id="txtUserID" runat="server" placeholder="User ID"/>
			 <br>
			 <asp:TextBox id="txtPass" runat="server" textmode="password" placeholder="Password"/>
			 
			 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 &nbsp;&nbsp;&nbsp;&nbsp;
				 <br>
			 <asp:button class="button" Text="Login" runat="server"  width="90" Onclick="loginCode"/>
			 <asp:Label id="lblinvalid" runat="server"/> 
			 			<br><a href="Create Account.aspx"><h6>Create Account</h6></a><a href="Forgot pass.aspx"><h6>Forgot Password</h6></a>	</div>
</form>
				
</body>
</html>

<script runat="server" language="C#">
void loginCode(object s, EventArgs e)
	{
		if(IsPostBack == true)
		{
			SqlConnection conn = new SqlConnection(@"Server=KADEJAH-LIFE\SQLEXPRESS; Database=Library1; Integrated Security=true");
			conn.Open();  

			String findText = "Select * from UserDetails where Email = '" +txtUserID.Text.Trim()+"'";
			findText += " and Lname = '" +txtPass.Text.Trim()+"'";
			SqlCommand cmdFind = new SqlCommand(findText, conn);

			SqlDataReader rdr = cmdFind.ExecuteReader();
			bool gotData = rdr.Read();
			
			if(gotData == false)
			{	
				lblinvalid.Text = "Invalid login";			
			}  
			else 
			{
				Session["Fname"] = rdr["Fname"];
				Session["Lname"] = rdr ["Lname"];
				Session["email"] = rdr["Email"];
		
				Response.Redirect("Books.aspx");
			}
			rdr.Close();
			conn.Close();
			}
	}
</script>