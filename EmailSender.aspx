<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailSender.aspx.cs" Inherits="AccidentDetecting.EmailSender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="To"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Body"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                   
                </tr>
               
                <tr>
                    <td><asp:Button ID="Button2" runat="server" Text="Send" /></td>
                     <td><asp:Button ID="Button3" runat="server" Text="" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
