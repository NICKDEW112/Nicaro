<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
        <div>
            <asp:textbox id="txtName" runat="server"/>
            <asp:button id ="myBtn" text="Show Name" runat="server" onclick="getName"/>
        </div>
        </form>
    </body>


    <script runat="server" language="C#">
       void getName(object s, EventArgs e)
       {
          txtName.Text = "James Bond";
       }

    </script>

</html>
