<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Driver.aspx.cs" Inherits="AccidentDetecting.Driver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <script src="http://maps.google.com/maps/api/js?sensor=false">
    </script>
    <script type="text/javascript">
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;
                document.getElementById("<%=hfLat.ClientID %>").value = latitude;
                document.getElementById("<%=hfLon.ClientID %>").value = longitude;
                var coords = new google.maps.LatLng(latitude, longitude);
                var mapOptions = {
                    zoom: 15,
                    center: coords,
                    mapTypeControl: true,
                    navigationControlOptions: {
                        style: google.maps.NavigationControlStyle.SMALL
                    },
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                map = new google.maps.Map(
                document.getElementById("mapContainer"), mapOptions
                );
                var marker = new google.maps.Marker({
                    position: coords,
                    map: map,
                    title: "Your current location!"
                });
 
            });
        } else {
            alert("Geolocation API is not supported in your browser.");
        }
    </script>
    <style type="text/css">
        #mapContainer
        {
            height: 400px;
            width: 400px;
            border: 10px solid #eaeaea;
        }
    </style>
    <div id="mapContainer">
    </div>
     <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter location name"></asp:TextBox><br />><br />
    <asp:HiddenField ID="hfLat" runat="server" />
    <asp:HiddenField ID="hfLon" runat="server" />
   <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter description"></asp:TextBox><br />><br />
      
        <asp:FileUpload ID="FileUpload1" runat="server" />     <br />><br />
            
             <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" />
             <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />


        </div>
    </form>
</body>
</html>
