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
            <asp:checkbox id="icecream" runat="server" text="IceCream ($250)" Checked=false/> <br>
            <asp:checkbox id="yogurt" runat="server" text="Yogurt ($530)" Checked=false/> <br>
            <asp:checkbox id="fudge" runat="server" text="Fudge ($120)" Checked=false/> <br>			
            <asp:button id ="myBtn" text="Check Out" runat="server" onclick="checkout"/> <br><br> <br>
			<asp:ListBox id="listbox1" runat="server" height='120' width='170'/>
        </div>
        </form>
    </body>


    <script runat="server" language="C#">
       void checkout(object s, EventArgs e)
       {
		  listbox1.Items.Clear();
		  
		  listbox1.Items.Add("You have selected:\n");
		  
		  int num = 0;
		  int icecream_price = 250;
		  int yogurt_price = 530;
		  int fudge_price = 120;
		  int total = 0;
		  
	      if(icecream.Checked == true)
		  {
		    num += 1;
			listbox1.Items.Add(num.ToString() +". IceCream");
		    total += icecream_price;
		  }
		  
		  if(yogurt.Checked == true)
		  {
		  	num += 1;
			listbox1.Items.Add(num.ToString() +". Yogurt");
		    total += yogurt_price;
		  }
		  
		  if(fudge.Checked == true)
		  {
		  	num += 1;
			listbox1.Items.Add(num.ToString() +". Fudge");
		    total += fudge_price;		  
		  }
          listbox1.Items.Add("Total Price is $" + total.ToString());
       }

    </script>

</html>