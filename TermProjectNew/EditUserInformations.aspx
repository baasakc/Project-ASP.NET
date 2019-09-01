<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditUserInformations.aspx.cs" Inherits="EditUserInformations" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Paper &mdash; Free Website Template, Free HTML5 Template by freehtml5.co</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
    <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
    <meta name="author" content="freehtml5.co" />

    <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

    <!-- Facebook and Twitter integration -->

    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Sacramento" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="Templete/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="Templete/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="Templete/css/bootstrap.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="Templete/css/magnific-popup.css">

    <!-- Flexslider  -->
    <link rel="stylesheet" href="Templete/css/flexslider.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="Templete/css/style.css">

    <!-- Modernizr JS -->
    <script src="Templete/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
    <form runat="server">
        <div class="fh5co-loader"></div>

        <div id="page">
            <nav class="fh5co-nav" role="navigation">
                <div class="container-fluid">
                    <div class="row">
                        <div class="top-menu">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-7 text-left menu-1">
                                        <ul>
                                            <li class="active">
                                                <asp:LinkButton ID="LinkButtonHome" runat="server">Home</asp:LinkButton></li>

                                            <li class="has-dropdown">
                                                <a href="ProposalsAdmin.aspx">Proposals</a>
                                                <ul class="dropdown">
                                                    <li><a href="AddProposalUser.aspx">Add Proposal</a></li>

                                                </ul>
                                            </li>
                                            <li>
                                                <asp:LinkButton ID="LinkButtonLogout" OnClick="LinkButtonLogout_Click" runat="server">Logout</asp:LinkButton></li>

                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 text-center menu-2">
                            <div id="fh5co-logo">
                                <h1>
                                    <a href="index.html">CAN
                               
                                        <br />
                                        CLUB<span>.</span>
                                        <small>Cankaya University CANCLUB</small>
                                    </a>
                                </h1>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>


            <div id="fh5co-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 col-padded-right">
                            <div runat="server" class="row">
                                <asp:Label ID="Label1" runat="server" Text="Change email"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBoxEmail" ValidateRequestMode="Enabled" TextMode="Email" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="LabelProfilePic" runat="server" Text="Change your profile picture"></asp:Label>
                                <br />
                                <asp:FileUpload ID="FileUploadImageUpload" ValidateRequestMode="Enabled" runat="server" />
                                <br />
                                <asp:Label ID="LabelBirthday" runat="server" Text="Change birthdate"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBoxDate" ValidateRequestMode="Enabled" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="ButtonSave" OnClick="ButtonSave_Click" runat="server" Text="Save" />
                            </div>
                        </div>

                        <aside id="sidebar">
                            <div class="col-md-3">
                                <div class="side animate-box">
                                    <div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
                                        <h2><span>About Me</span></h2>
                                    </div>
                                    <div class="fh5co-staff">
                                        <asp:Image ID="ImageProfilePic" runat="server" />
                                        <h3>
                                            <asp:Label ID="LabelUsernameAboutMe" runat="server" Text=""></asp:Label></h3>
                                        <strong class="role">Admin</strong>
                                        <asp:Label ID="LabelInfo" runat="server" Text=""></asp:Label>

                                    </div>
                                </div>

                            </div>
                        </aside>

                    </div>
                </div>
            </div>

   

            <footer id="fh5co-footer" role="contentinfo">
                <div class="container">
                    <div class="row row-pb-md">
                        <div class="col-md-4 fh5co-widget">
                            <h4>CANCLUB</h4>
                            <p>Members only.</p>
                        </div>
                       

                     

                    </div>

               

                </div>
            </footer>
        </div>

        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
        </div>

        <!-- jQuery -->
        <script src="Templete/js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="Templete/js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="Templete/js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="Templete/js/jquery.waypoints.min.js"></script>
        <!-- Flexslider -->
        <script src="Templete/js/jquery.flexslider-min.js"></script>
        <!-- Magnific Popup -->
        <script src="Templete/js/jquery.magnific-popup.min.js"></script>
        <script src="Templete/js/magnific-popup-options.js"></script>
        <!-- Main -->
        <script src="Templete/js/main.js"></script>
    </form>
</body>
</html>

