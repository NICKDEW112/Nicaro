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
           num1 <asp:textbox id="txtNum1" runat="server"/> <br><br>
           num2 <asp:textbox id="txtNum2" runat="server"/> <br><br>
           result <asp:textbox id="txtResult" runat="server"/> <br><br>           
            <asp:button id ="myBtn" text="ADD" runat="server" onclick="getSum"/>
        </div>
        </form>
    </body>


    <script runat="server" language="C#">
       void getSum(object s, EventArgs e)
       {
          int n1 = Convert.ToInt16(txtNum1.Text);
          int n2 = Convert.ToInt16(txtNum2.Text);     
          txtResult.Text = (n1+n2).ToString();
       }

    </script>

</html>
