<%@ Page Language="C#" %>
<%@ Import Namespace = "System.Data.SqlClient" %>
<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="utf-8">
    </head>
	<body>
	<form runat="server" class="Form1">
	First Name: <br>
	<asp:TextBox id="txtFname" runat="server" placeholder="Enter First Name" required/> <br>
    Last Name: <br>
	<asp:TextBox id="txtLname" runat="server" placeholder="Enter Last Name" required/> <br>
	Email Address: <br>
	<asp:TextBox id="txtEmail" runat="server" placeholder="example@gmail.com" required/> <br>
    Choose a password: <br>
	<asp:TextBox id="txtPass" runat="server" textmode ="password" placeholder="Enter passowrd" required/> <br>
	Confirm password: <br>
	<asp:TextBox id="txtPass2" runat="server" textmode = "password" placeholder="Enter passowrd again" required/> <br>
	
	<asp:button class="button" Text="Sign Up" runat="server"  width="90" onclick="UpDbase"/>

	</form>


	
    </body>


    <script runat="server" language="C#">
      void UpDbase(object s, EventArgs e)
	{
		
			SqlConnection conn = new SqlConnection(@"Server=KADEJAH-LIFE\SQLEXPRESS; Database=Library2; Integrated Security=true");
			conn.Open(); 
			
			SqlCommand comm = new SqlCommand("INSERT INTO UserDetails(Fname,Lanme,Email,Password)" + "VALUES('"+txtFname.Text+"','"+txtLname+"','"+txtEmail.Text+"','"+txtPass+"')", conn);
			comm.ExecuteNonQuery();
			Response.Redirect("Login1.aspx");
			}
    </script>

</html>