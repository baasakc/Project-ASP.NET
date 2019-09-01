<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProposalAdmin.aspx.cs" Inherits="AddProposal" %>


<!DOCTYPE HTML>
<html>
<head>
    <style>
        .css-textbox {
            padding: 10px;
            font-size: 15px;
            border-width: 2px;
            border-color: #dfadc5;
            background-color: #f0ece3;
            color: #000000;
            border-style: solid;
            border-radius: 38px;
            box-shadow: 0px 0px 19px rgba(223,173,197,.75);
            text-shadow: 0px 0px 5px rgba(66,66,66,.75);
        }

            .css-textbox:focus {
                outline: none;
            }

        .css-select {
            position: relative;
            display: inline-block;
            margin-bottom: 15px;
            width: 50%;
        }

            .css-select select {
                font-family: 'Arial';
                display: inline-block;
                width: 100%;
                cursor: pointer;
                padding: 10px 10px;
                outline: 0;
                border: 5px solid #dfadc5;
                border-radius: 38px;
                background: #f0ece3;
                color: #000000;
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
            }

                .css-select select::-ms-expand {
                    css- display: none;
                }

                css-
                .css-select select:hover,
                .css-select select:focus {
                    css- color: #000000;
                    css- background: #f0ece3;
                }

        css-
        .css-select select:disabled {
            css- opacity: 0.6;
            pointer-events: none;
        }

        .css-select_arrow {
            position: absolute;
            top: 16px;
            right: 15px;
            width: 0px;
            height: 0px;
            border: solid #7b7b7b;
            border-width: 0 3px 3px 0;
            display: inline-block;
            padding: 3px;
            transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
        }

        .css-select select:hover ~ .select_arrow,
        .css-select select:focus ~ .select_arrow {
            css- border-color: #000000;
        }

        css-
        .css-select select:disabled ~ .select_arrow {
            border-top-color: #cccccc;
        }
        .myButton {
	-moz-box-shadow: 0px 10px 14px -7px #dbbcd7;
	-webkit-box-shadow: 0px 10px 14px -7px #dbbcd7;
	box-shadow: 0px 10px 14px -7px #dbbcd7;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #dbbcd7), color-stop(1, #c98cbb));
	background:-moz-linear-gradient(top, #dbbcd7 5%, #c98cbb 100%);
	background:-webkit-linear-gradient(top, #dbbcd7 5%, #c98cbb 100%);
	background:-o-linear-gradient(top, #dbbcd7 5%, #c98cbb 100%);
	background:-ms-linear-gradient(top, #dbbcd7 5%, #c98cbb 100%);
	background:linear-gradient(to bottom, #dbbcd7 5%, #c98cbb 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dbbcd7', endColorstr='#c98cbb',GradientType=0);
	background-color:#dbbcd7;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:4px;
	border:1px solid #dbbcd7;
	display:inline-block;
	cursor:pointer;
	color:#000000;
	font-family:Arial;
	font-size:14px;
	font-weight:bold;
	padding:13px 50px;
	text-decoration:none;
	text-shadow:0px 1px 0px #8a3d7d;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c98cbb), color-stop(1, #dbbcd7));
	background:-moz-linear-gradient(top, #c98cbb 5%, #dbbcd7 100%);
	background:-webkit-linear-gradient(top, #c98cbb 5%, #dbbcd7 100%);
	background:-o-linear-gradient(top, #c98cbb 5%, #dbbcd7 100%);
	background:-ms-linear-gradient(top, #c98cbb 5%, #dbbcd7 100%);
	background:linear-gradient(to bottom, #c98cbb 5%, #dbbcd7 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c98cbb', endColorstr='#dbbcd7',GradientType=0);
	background-color:#c98cbb;
}
.myButton:active {
	position:relative;
	top:1px;
}

    </style>
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
                                            <li><a href="HomePageAdmin.aspx">Admin Homepage</a></li>
                                            <li><a href="ListAllMembers.aspx">List All Members</a></li>
                                            <li class="has-dropdown">
                                                <a href="ProposalsAdmin.aspx">Proposals</a>
                                                <ul class="dropdown">
                                                    <li class="active"><a href="AddProposal.aspx">Add Proposal</a></li>

                                                </ul>
                                            </li>
                                            <li>
                                                <asp:LinkButton ID="LinkButtonLogout" OnClick="Logout_Click" runat="server">Logout</asp:LinkButton></li>

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
            <%--	<div id="fh5co-blog-popular">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-12 col-md-offset-0 text-center fh5co-heading">
					<h2><span>Popular Post</span></h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="Templete/images/blog-1.jpg" alt=""></a>
						<div class="blog-text">
							<h3><a href="#">Conquer The World</a></h3>
						</div> 
					</div>
				</div>
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="Templete/images/blog-2.jpg" alt=""></a>
						<div class="blog-text">
							<h3><a href="#">List Minimal Design</a></h3>
						</div> 
					</div>
				</div>
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="Templete/images/blog-1.jpg" alt=""></a>
						<div class="blog-text">
							<h3><a href="#">Modeling Spotted</a></h3>
						</div> 
					</div>
				</div>
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="Templete/images/blog-2.jpg" alt=""></a>
						<div class="blog-text">
							<h3><a href="#">Around The World</a></h3>
						</div> 
					</div>
				</div>
			</div>
		</div>
	</div>--%>

            <div id="fh5co-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 col-padded-right">
                            <div class="row" style="">
                                <h3>
                                    <asp:Label ID="LabelProposalTitle" runat="server" Text="Proposal Title"></asp:Label></h3>
                                <asp:TextBox CssClass="css-textbox" ID="TextBoxPropsaltitle" runat="server"></asp:TextBox>
                                <br />
                                <h3>
                                    <asp:Label ID="LabelProposalDesc" runat="server" Text="Proposal Description"></asp:Label></h3>
                                <asp:TextBox CssClass="css-textbox" ID="TextBoxProposalDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <br />
                                <h3>
                                    <asp:Label ID="LabelDate" runat="server" Text="Activity Date"></asp:Label></h3>

                                <asp:TextBox ID="TextBoxDate" CssClass="css-textbox" runat="server" TextMode="DateTime"></asp:TextBox>
                          
                            <br />
                            <h3>
                                <asp:Label ID="LabelType" runat="server" Text="Activty Type"></asp:Label></h3>

                            <asp:DropDownList CssClass="css-select" ID="DropDownListActivityType" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Technical Visit</asp:ListItem>
                                <asp:ListItem>Project Meeting</asp:ListItem>
                                <asp:ListItem>Social Event</asp:ListItem>
                            </asp:DropDownList>
                                <br />
                                <asp:Button ID="ButtonSave" CssClass="myButton" OnClick="Save_Click" runat="server" Text="Save" />
                                <br />
                                <asp:Label ID="LabelError" runat="server" Text="Missing field." Visible="false"></asp:Label>
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
                                <%--					<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span>Latest Posts</span></h2>
							</div>
							<div class="blog-entry">
								<a href="#">
									<img src="Templete/images/blog-1.jpg" class="img-responsive" alt="">
									<div class="desc">
										<span class="date">Dec. 25, 2016</span>
										<h3>Most Beautiful Site in 2016</h3>
									</div>
								</a>
							</div>
							<div class="blog-entry">
								<a href="#">
									<img src="Templete/images/blog-2.jpg" class="img-responsive" alt="">
									<div class="desc">
										<span class="date">Dec. 25, 2016</span>
										<h3>Most Beautiful Site in 2016</h3>
									</div>
								</a>
							</div>
							<div class="blog-entry">
								<a href="#">
									<img src="Templete/images/blog-1.jpg" class="img-responsive" alt="">
									<div class="desc">
										<span class="date">Dec. 25, 2016</span>
										<h3>Most Beautiful Site in 2016</h3>
									</div>
								</a>
							</div>
						</div>--%>
                                <%--						<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span>Category</span></h2>
							</div>
							<ul class="category">
								<li><a href="#"><i class="icon-check"></i>Lifestyle</a></li>
								<li><a href="#"><i class="icon-check"></i>Web Development</a></li>
								<li><a href="#"><i class="icon-check"></i>Web Design</a></li>
								<li><a href="#"><i class="icon-check"></i>Nature</a></li>
								<li><a href="#"><i class="icon-check"></i>Life</a></li>
								<li><a href="#"><i class="icon-check"></i>Entertainment</a></li>
							</ul>
						</div>--%>
                                <%--						<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span>Intagram</span></h2>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="insta" style="background-image: url(images/insta-1.jpg);">
										
									</div>
								</div>
							</div>
						</div>--%>
                            </div>
                        </aside>

                    </div>
                </div>
            </div>

            <%--	<div id="fh5co-instagram">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-12 col-md-offset-0 text-center fh5co-heading">
					<h2><span>Instagram Posts</span></h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 nopadding animate-box" data-animate-effect="fadeIn">
				<div class="insta" style="background-image: url(images/insta-1.jpg);"></div>
			</div>
			<div class="col-md-3 nopadding animate-box" data-animate-effect="fadeIn">
				<div class="insta" style="background-image: url(images/insta-2.jpg);"></div>
			</div>
			<div class="col-md-3 nopadding animate-box" data-animate-effect="fadeIn">
				<div class="insta" style="background-image: url(images/insta-3.jpg);"></div>
			</div>
			<div class="col-md-3 nopadding animate-box" data-animate-effect="fadeIn">
				<div class="insta" style="background-image: url(images/insta-4.jpg);"></div>
			</div>
		</div>
	</div>--%>

            <footer id="fh5co-footer" role="contentinfo">
                <div class="container">
                    <div class="row row-pb-md">
                        <div class="col-md-4 fh5co-widget">
                            <h4>CANCLUB</h4>
                            <p>Members only.</p>
                        </div>
                        <div class="col-md-4 col-md-push-1">
                            <h4>Links</h4>
                            <ul class="fh5co-footer-links">
                                <li><a href="HomePageAdmin.aspx">Admin Homapage</a></li>
                                <li><a href="ListAllMembers.aspx">List All Members</a></li>
                                <li><a href="ProposalsAdmin.aspx">Proposals</a></li>

                            </ul>
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

