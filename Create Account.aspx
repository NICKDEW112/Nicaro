<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/new user.css">
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
       <div class = "container">
           <div class ="feedback">
			 <form>
			 <h1>Create Account</h1>
            <fieldset border=1px;>
             <legend>User Information</legend>
             
			 <label for="lname"> 
			 <span>Last Name</span>
			 <asp:TextBox id="Lname" runat="server" placeholder="Last Name"/>
			 </label>
             
             
			 
			 <label> 
             <span>First Name</span>
			 <asp:TextBox id="Fname" runat="server" placeholder="First Name"/>
             </label>
			 
			  <label> 
             <span>User Type</span>
             <asp:TextBox id="User Type" runat="server" placeholder="Type"/>
             </label>
			 
			   <label> 
             <span>Email Address</span>
             <asp:TextBox id="email" runat="server" placeholder="example@gmail.com"/>
             </label>
            </fieldset>
		   

	   
		 </form> 
         </div>
		 </div>
        </form>
    </body>


    <script runat="server" language="C#">
        void updateCode(object s, EventArgs e)
	{
		
			SqlConnection conn = new SqlConnection(@"Server=HORRETT-PC\SQLEXPRESS; Database=Uplift; Integrated Security=true");
			conn.Open();  

			String updateText = "Update tbUsers Set Fname = '" +txtFname.Text.Trim() +"' , ";
			updateText += "Lname = '" +txtLname.Text.Trim() +"' ";
			updateText += "where email = '" + Session["email"].ToString() + "'";
			
			Response.Write(updateText);

			SqlCommand cmdUpdate = new SqlCommand(updateText, conn);
			int rows = cmdUpdate.ExecuteNonQuery();

			conn.Close();	
			
			lblMessage.Text ="Data Updated!";
	
	}

    </script>

</html>
