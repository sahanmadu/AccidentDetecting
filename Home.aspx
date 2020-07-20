<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AccidentDetecting.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   

    <link href="Home.css" rel="stylesheet" />
     <script src="JS/jquery-3.2.1.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            left: 3px;
            top: 102px;
            height: 503px;
        }
        .auto-style2 {
            left: 3px;
            top: 77px;
            height: 498px;
        }
    </style>
</head>
<body>
    <div>
        <nav>
            <div>
                <ul>
                    <li><a href="User.aspx" class="items">My Insurance</a></li>
                    <li><a href="PhotoUpload.aspx" class="items">Upload details</a></li>
                    <li><a href="Admin.aspx" class="items">Admin</a></li>
                    <li><a href="#" class="items">Help</a></li>
                    <li><a href="#" class="items">Contact US</a></li>
                </ul>
            </div>
            <div>
                <form id="form1" runat="server">
                    <div id="nav1">
                        <asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        <asp:Button ID="Submit1" runat="server" Text="Login" OnClick="Submit1_Click" />
                    </div>
                </form>
            </div>
        
        </nav>
        
        <div>
            <div class="abc">
                    <img src="Images/road_marking_fog_mountains_movement_120136_1920x1080.jpg" class="x6" />
                    <img src="Images/pexels-photo-90317.jpeg" class="x5" />
                    <img src="Images/pexels-photo-271743.jpeg" class="x4" />
                    <img src="Images/road_marking_fog_mountains_movement_120136_1920x1080.jpg" class="x3" />
                    <img src="Images/road_turn_long_exposure_137887_1920x1080.jpg" class="x2" />
                    <img src="Images/pier_dock_sea_dusk_shore_118549_1920x1080.jpg" class="x1" />
            </div>
            <div id="signup1">
                <div class="button" id="button-3">
                            <div id="circle"></div>
                            <a href="Signup.aspx">Signup</a>
                </div>
            </div>
            <div class ="he1">
                <h1>Welcome to our site</h1>  
            </div>
            <div class ="he2">
         
                <a href="#" class="submenu">Accident Details(MAPS)</a>
                <a class="submenu">RDA</a>
                <a class="submenu">POLICE</a>
                <a class="submenu">Insuarance Staff</a>
               
            </div>
            <div class="video1">
                <video width="400" height="300" controls autoplay>

                      
                        <source src="Videos/Google Maps Secrets- How Exactly Does Google Maps Work.mp4" type="video/mp4">
                </video>
                
            </div>

            <div class="second">
                <h1>CREATE AND FIND</h1>
            </div>
           
                <div id="googleMap" style="width:50%;height:300px;"></div>
           

            <div>
                <footer  class="ul12">
                    <ul>
                        <li><a href="http://wwww.facebook.com"><img src="Images/iconfinder_facebook_circle_color_107175.png" /> Facebook</a></li>
                        <li><a href="http://wwww.instagram.com"><img src="Images/iconfinder_Instagram_1298747.png"/>Instagram</a></li>
                        <li><a href="http://wwww.youtube.com"><img src="Images/iconfinder_youtube_317714.png" />Youtube</a></li>
                        <li><a href="http://wwww.twitter.com"><img src="Images/iconfinder_twitter_313466.png" />Twitter</a></li>
                    </ul>
                </footer>
            </div>
           
            <script>
                    $(document).ready(function () {
                        var $img = $("div img");
                        var x = 1;

                        setInterval(function () {
                            $(".x" + x).fadeTo(2353, 0, function () {
                                x++;
                                if (x === $img.length) {
                                    x = 1;
                                    $img.css("opacity", "1");
                                }
                            });
                        }, 7000);

                    });

        
            </script>

            

        </div>
        
        
   </div>

</body>
</html>
