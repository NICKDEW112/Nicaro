<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/theme.css">
        <title>Forgot Password</title>
    </head>
    <body>
        <form id="form1" runat="server">
        <div>
		    Enter email address:
            <asp:textbox id="txtUser" placeholder="example@gmail.com" runat="server" />
            <asp:button class="button" text="Continue" runat="server" onclick="message"/>
        </div>
        </form>
    </body>


    <script runat="server" language="C#">
       void message(object s, EventArgs e)
	   {
			string script = "alert(\"Your Password has been sent to the email you entered.\");";
			ScriptManager.RegisterStartupScript(this, GetType(), 
              "ServerControlScript", script, true);

		}
    </script>

</html>
