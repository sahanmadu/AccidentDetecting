<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="AccidentDetecting.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/AdminPanel.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Admin Panel"></asp:Label>
            <div class="bc1">
            
           <div>
               <ul>
                   <li>Police</li>
                   <li>RDA</li>
                   <li>Insurance Staff </li>
                   
               </ul>
           </div>
            <div class="abc">
                <ul>
                    <li> <a href="http://www.google.com"><img src="Images/police-1623538-1375042.png" alt="img1" /></a></li>
                     <li> <a href="http://www.google.com"><img src="Images/Rda_sl_logo.jpg" alt="img2" /></a></li>
                     <li> <a href="http://www.google.com"><img src="Images/Insurance-Company.png" alt="img3" /></a></li>
                </ul>
            </div>
          </div>
        </div>
    </form>
</body>
</html>
