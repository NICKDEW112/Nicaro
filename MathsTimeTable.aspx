<html>
<body>

<form id ="frmTimeTable" runat="server">

<table>
<tr>
	<td> Select Number </td>
	<td> 
         <asp:DropDownList id="drpTimeTable" runat="server">
			<asp:ListItem Text="2" value =2 />
			<asp:ListItem Text="3" value =3 />
			<asp:ListItem Text="4" value =4 />
			<asp:ListItem Text="5" value =5 />
			<asp:ListItem Text="6" value =6 />
			<asp:ListItem Text="7" value =7 />
			<asp:ListItem Text="8" value =8 />
			<asp:ListItem Text="9" value =9 />
			<asp:ListItem Text="10" value =10 />
			<asp:ListItem Text="11" value =11 />	
			<asp:ListItem Text="12" value =12 />			
		 </asp:DropDownList>
	</td>
</tr>
<tr> </tr>
<tr>
<td> <asp:Button id="btnTimeTable" text="Show TimeTable" runat="server" onclick="getTimeTable"/></td>
</tr>

<tr> </tr>
<tr> </tr>
<tr> 
<td><asp:ListBox id="lstDisplay" runat="server" height ="250" width="150"/> </td>
</tr>
</table>

</form>



    <script runat="server" language="C#">
       void getTimeTable(object s, EventArgs e)
       {
	     int prd=0;
		 int num = Convert.ToInt16(drpTimeTable.SelectedValue);
		 lstDisplay.Items.Clear();
		 for(int x=1; x<=12; x++)
		  {
			prd = num * x;
			lstDisplay.Items.Add(num + " x " + x + " = " +prd);
			//echo $v1."x".$x."=".$prd."<br>";
		  }
       }

    </script>


</body>
</html>