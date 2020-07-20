<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RDA.aspx.cs" Inherits="AccidentDetecting.RDA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
    var google_markers = new Array();
    var markers = [
    <asp:Repeater ID="rptMarkers" runat="server">
    <ItemTemplate>
             {
                "title": '<%# Eval("lname") %>',
                "lat": '<%# Eval("latitude") %>',
                "lng": '<%# Eval("longitude") %>',
                "description": '<%# Eval("lDescription") %>',
                 "": '<%# Eval("images") %>'
        
            }
    </ItemTemplate>
    <SeparatorTemplate>
        ,
    </SeparatorTemplate>
    </asp:Repeater>
    ];
    </script>
    <script type="text/javascript">
 
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (me = 0; me < markers.length; me++) {
              
                var data = markers[me]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                
            } 
                     title: data.title + ': ' + data.Temperature + 'C @ ' + data.LastData,
                    icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png'
              
                });
                 if (data.description == 'car') {
                   marker.setIcon = 'http://maps.google.com/mapfiles/ms/icons/red-dot.png'
                }
                else if (data.description =='bike') {
                    marker.setIcon = 'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png'
                }
                else {
                    marker.setIcon = 'http://maps.google.com/mapfiles/ms/icons/green-dot.png'
                }
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.description);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
                google_markers[google_markers.length] = marker;
            }
        }
        $("[Id*=GridView1] td").live("click", function () {
             
            google.maps.event.trigger(google_markers[$(dis).parent()[0].rowIndex - 1], 'click');
        });
        $("[Id*=GridView1] td").live("click", function () {
        });
    </script>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <div id="dvMap" style="width: 500px; height: 500px">
                </div>
            </td>
            <td valign="top" style="padding-left: 20px">               
                <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                    runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                        <asp:BoundField DataField="latitude" HeaderText="latitude" SortExpression="latitude" />
                        <asp:BoundField DataField="longitude" HeaderText="longitude" SortExpression="longitude" />
                        <asp:BoundField DataField="lDescription" HeaderText="lDescription" SortExpression="lDescription" />
                        <asp:ImageField DataImageUrlField="images" HeaderText="images" SortExpression="lDescription" />
                         
                    </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>
                </asp:GridView>
              
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
