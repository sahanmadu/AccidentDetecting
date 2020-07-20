<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PoliceSignup.aspx.cs" Inherits="AccidentDetecting.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/PoliceSignup.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <h2 class="c2">CREATE ACCOUNT FOR POLICE</h2>
        <div>
              <div class="main1">
              
               
                <table>
                    ​
                <tr>
                     <td>User ID:</td>
                     <td><asp:TextBox ID="txt1" runat="server" ></asp:TextBox></td> 
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter the reg.on" ForeColor="#FF3300" ControlToValidate="txt1"></asp:RequiredFieldValidator>
                      </td>
               </tr>
            ​
               <tr>
                     <td>Name :</td>
                     <td><asp:TextBox ID="txt2" runat="server"></asp:TextBox></td> 
                    <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter customer id" ForeColor="#FF3300" ControlToValidate="txt2"></asp:RequiredFieldValidator>
                      </td>
               </tr>
            ​
               <tr>
                     <td>Address :</td>
                     <td> <asp:TextBox ID="txt3" runat="server"></asp:TextBox></td>   
                   <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter full name" ForeColor="#FF3300" ControlToValidate="txt3"></asp:RequiredFieldValidator>
                      </td>
               </tr>
            ​
               <tr>
                     <td>Username :</td>
                     <td><asp:TextBox ID="txt4" runat="server"></asp:TextBox></td>   
                   <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter email" ForeColor="#FF3300" ControlToValidate="txt4"></asp:RequiredFieldValidator>
                      </td>
                   
               </tr>

                <tr>
                     <td>Password :</td>
               <td><asp:TextBox ID="txt5" runat="server" MaxLength="20" TextMode="Password" OnTextChanged="txt5_TextChanged" ></asp:TextBox></td> 
                    <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="enter username" ForeColor="#FF3300" ControlToValidate="txt5"></asp:RequiredFieldValidator>
                      </td>
               </tr>

                <tr>
                    <td>Confirm Password: </td>
                    <td><asp:TextBox ID="txt6" runat="server" MaxLength="20" TextMode="Password" OnTextChanged="txt6_TextChanged"></asp:TextBox></td>
                     <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="enter password" ForeColor="#FF3300" ControlToValidate="txt6"></asp:RequiredFieldValidator>
                      </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" ControlToCompare="txt5" ControlToValidate="txt6" ForeColor="Red"></asp:CompareValidator>
                    </td>
                 </tr>

                <tr>
                    <td>Gender : </td>
                <td><asp:TextBox ID="txt7" runat="server"></asp:TextBox></td>   
                     <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="re-enter password" ForeColor="#FF3300" ControlToValidate="txt7"></asp:RequiredFieldValidator>
                      </td>
                    
                 </tr>
                 



​
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" /></td>
                      <td><asp:Button ID="Button2" runat="server" Text="RESET" OnClick="Button1_Click" Width="184px" BackColor="#FFFF66" /></td>
                </tr>    
        
                
            




            </table>

        </div>
        </div>
    </form>
</body>
</html>
