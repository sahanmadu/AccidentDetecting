<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="AccidentDetecting.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/Signup.css" rel="stylesheet" />

</head>
<body>
     <h2 class="c2">Signup</h2>
    <form id="form1" runat="server">

            
             <div class="main1">
              
               
                <table>
                    ​
                <tr>
                     <td>Vehicle No:</td>
                     <td><asp:TextBox ID="txtNo" runat="server" ></asp:TextBox></td> 
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter the reg.on" ForeColor="#FF3300" ControlToValidate="txtNo"></asp:RequiredFieldValidator>
                      </td>
               </tr>
            ​
               <tr>
                     <td>Customer ID :</td>
                     <td><asp:TextBox ID="txtCusID" runat="server"></asp:TextBox></td> 
                    <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter customer id" ForeColor="#FF3300" ControlToValidate="txtCusID"></asp:RequiredFieldValidator>
                      </td>
               </tr>
            ​
               <tr>
                     <td>Full Name :</td>
                     <td> <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>   
                   <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter full name" ForeColor="#FF3300" ControlToValidate="txtfname" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
                      </td>
               </tr>
            ​
               <tr>
                     <td>E-mail :</td>
                     <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>   
                   <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter email" ForeColor="#FF3300" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                      </td>
                   <td>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </td>
               </tr>

                <tr>
                     <td>Username :</td>
                     <td><asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>   
                    <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="enter username" ForeColor="#FF3300" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
                      </td>
               </tr>

                <tr>
                    <td>Password : </td>
                    <td><asp:TextBox ID="txtpwd" runat="server" MaxLength="20" TextMode="Password" OnTextChanged="txtpwd_TextChanged" ReadOnly="True"></asp:TextBox></td>
                     <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="enter password" ForeColor="#FF3300" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
                      </td>
                 </tr>

                <tr>
                    <td>Confirm Password : </td>
                    <td><asp:TextBox ID="txtcpwd" runat="server" MaxLength="20" TextMode="Password" OnTextChanged="txtcpwd_TextChanged"></asp:TextBox></td>
                     <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="re-enter password" ForeColor="#FF3300" ControlToValidate="txtcpwd"></asp:RequiredFieldValidator>
                      </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" ControlToCompare="txtpwd" ControlToValidate="txtcpwd" ForeColor="Red"></asp:CompareValidator>
                    </td>
                 </tr>
                 



​
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="SIGNUP" OnClick="Button1_Click" Width="184px" /></td>
                      <td><asp:Button ID="Button2" runat="server" Text="RESET" OnClick="Button1_Click" Width="184px" BackColor="#FFFF66" /></td>
                </tr>    
        
                
            




            </table>

        </div>

    </form>
</body>
</html>
