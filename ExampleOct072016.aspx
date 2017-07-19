<%@ Page Language="C#" debug="true"%>

<html>
<body>

<form runat="server">

<table>
<tr>
	<td> Enter Number </td>
	<td> <asp:TextBox id="txtNum" runat="server"/> </td>
	<td> <asp:Button id="btnAddNum" runat="server" text="Add Data" onclick="addData"/>
</tr>
<tr>
    <td> </td>
	<td>  <asp:DropDownList id="drpNumbers" runat="server" width="165" AutoPostBack="true" OnSelectedIndexChanged="clearRadio"/> </td>
</tr>
<tr> </tr>
<tr>
	<td> </td>
	<td> <asp:RadioButton id="radOddEven"  runat="server" groupname="radbtn" text="Odd/Even" AutoPostBack="true" OnCheckedChanged="processData"/></td>
</tr>
<tr>
	<td> </td>
	<td> <asp:RadioButton id="radPrime"  runat="server" groupname="radbtn" text="Prime" AutoPostBack = "true" OnCheckedChanged="processData"/></td>
</tr>
<tr> </tr>
<tr> </tr>
<tr> 
<td> </td>
<td> <asp:ListBox id="lstDisplay" runat="server" height ="250" width="165"/> </td>
</tr>
</table>

</form>



    <script runat="server" language="C#">
       void addData(object s, EventArgs e)
       {
		 int num = Convert.ToInt16(txtNum.Text);
		 drpNumbers.Items.Add(num.ToString());
		 txtNum.Text ="";

       }
	
	   void clearRadio(object s, EventArgs e)
       {
		 radOddEven.Checked = false;
		 radPrime.Checked = false;
		 lstDisplay.Items.Clear();
       }
	   
       void processData(object s, EventArgs e)
       {
	        lstDisplay.Items.Clear();
			int num = Convert.ToInt16(drpNumbers.SelectedItem.ToString());
			
			if (radOddEven.Checked)
			{
			   if(num % 2 == 1)
			      lstDisplay.Items.Add(num+" is odd");
			   else lstDisplay.Items.Add(num+" is even");
			}
            
 			if (radPrime.Checked)
			{
			   bool found = false;
			   
			   for(int i=2; i<num; i++)
			   {
			      if(num % i == 0)
				  {
					found = true;
					break;
				  }
			   }
			   if(found)
			     lstDisplay.Items.Add(num+" is not prime");
			   else lstDisplay.Items.Add(num+" is prime");
			}			
			

       }

    </script>


</body>
</html>