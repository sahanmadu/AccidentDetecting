<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AccidentDetecting.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <link href="CSS/Admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 80px;
        }
        .auto-style2 {
            margin-left: 880px;
            font-size:20px;
            font-weight:bold;
            color:brown;
        }
    </style>
</head>
<body>
    
    <div class="auto-style2">
        <asp:Label ID="Label3" runat="server" Text="Administration only"></asp:Label>
    </div>
     
    <form id="form1" runat="server">
     
        <div class="table1">
            <table>

                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Username" CssClass=""></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="LOGIN" BackColor="#99FF33" BorderColor="White" Width="102px" OnClick="Button1_Click" /></td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="#FFFFCC" Width="125px" /></td>
                </tr>
            </table>
        </div>
      
    </form>
    

    
    
    
</body>
</html>
