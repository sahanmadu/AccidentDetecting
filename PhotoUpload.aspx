<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoUpload.aspx.cs" Inherits="AccidentDetecting.PhotoUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 600px;
        }
        .auto-style2 {
            width: 63%;
            margin-left: 240px;
        }
        .auto-style3 {
            width: 398px;
        }
        .auto-style4 {
            margin-left: 680px;
        }
        .auto-style5 {
            margin-left: 800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" ForeColor="#660033" Text="Upload details about accident"></asp:Label>
            <br />
            <br />
            <br />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Vehcle NO</td>
                <td>
                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Driver ID</td>
                <td>
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Name</td>
                <td>
                    <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Description</td>
                <td>
                    <asp:TextBox ID="txt4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Photos</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
        </table>
        <div class="auto-style4">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
        </div>
        <p class="auto-style5">
            <asp:Label ID="lbld" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
