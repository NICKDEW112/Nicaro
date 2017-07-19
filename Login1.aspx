<%@ Page Language="C#" %>
<%@ Import Namespace = "System.Data.SqlClient" %>
<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="utf-8">
    </head>
	<body>
		<form runat="server" class="Form1">
	Username: <br>
	<asp:TextBox id="txtUserID" runat="server" placeholder="User ID"/>
			 <br>
			 Password: <br>
    <asp:TextBox id="txtPass" runat="server" textmode="password" placeholder="Password"/>
			 <br>
	<asp:button class="button" Text="Login" runat="server"  width="90" onclick="loginCode"/>

	</form>

	
    </body>


    <script runat="server" language="C#">
     
	 void loginCode(object s, EventArgs e)
	{
		if(IsPostBack == true)
		{
			SqlConnection conn = new SqlConnection(@"Server=KADEJAH-LIFE\SQLEXPRESS; Database=Library2; Integrated Security=true");
			conn.Open();  

			String findText = "Select * from UserDetails where Email = '" +txtUserID.Text.Trim()+"'";
			findText += " and Lname = '" +txtPass.Text.Trim()+"'";
			SqlCommand cmdFind = new SqlCommand(findText, conn);

			SqlDataReader rdr = cmdFind.ExecuteReader();
			bool gotData = rdr.Read();
			
			
					
			}  
			if(gotData == true)
			{
				Session["Fname"] = rdr["Fname"];
				Session["Lname"] = rdr["Lname"];
				Session["email"] = rdr["Email"];
		
				Response.Redirect("LBooks1.aspx");
			}
			else 
			{
			 
			}
			rdr.Close();
			conn.Close();
			}
	}
	  
    </script>

</html>
