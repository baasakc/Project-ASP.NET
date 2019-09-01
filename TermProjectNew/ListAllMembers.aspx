<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListAllMembers.aspx.cs" Inherits="ListAllUsers" %>
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
	<style>
     .datagrid table { border-collapse: collapse; text-align: left; width: 100%; } .datagrid {font: normal 12px/150% Arial, Helvetica, sans-serif; background: #fff; overflow: hidden; border: 10px solid #BA8282; -webkit-border-radius: 12px; -moz-border-radius: 12px; border-radius: 12px; }.datagrid table td, .datagrid table th { padding: 3px 10px; }.datagrid table thead th {background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #614444), color-stop(1, #BA8282) );background:-moz-linear-gradient( center top, #614444 5%, #BA8282 100% );filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#614444', endColorstr='#BA8282');background-color:#614444; color:#FFFFFF; font-size: 15px; font-weight: bold; border-left: 1px solid #A88585; } .datagrid table thead th:first-child { border: none; }.datagrid table tbody td { color: #000000; border-left: 1px solid #AB9399;font-size: 12px;font-weight: normal; }.datagrid table tbody .alt td { background: #F4E3E3; color: #704247; }.datagrid table tbody td:first-child { border-left: none; }.datagrid table tbody tr:last-child td { border-bottom: none; }.datagrid table tfoot td div { border-top: 1px solid #BA8282;background: #F4CDCD;} .datagrid table tfoot td { padding: 0; font-size: 12px } .datagrid table tfoot td div{ padding: 2px; }.datagrid table tfoot td ul { margin: 0; padding:0; list-style: none; text-align: right; }.datagrid table tfoot  li { display: inline; }.datagrid table tfoot li a { text-decoration: none; display: inline-block;  padding: 2px 8px; margin: 1px;color: #FFFFFF;border: 1px solid #BA8282;-webkit-border-radius: 8px; -moz-border-radius: 8px; border-radius: 8px; background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #BA8282), color-stop(1, #4A2C2F) );background:-moz-linear-gradient( center top, #BA8282 5%, #4A2C2F 100% );filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#BA8282', endColorstr='#4A2C2F');background-color:#BA8282; }.datagrid table tfoot ul.active, .datagrid table tfoot ul a:hover { text-decoration: none;border-color: #BA8282; color: #FFFFFF; background: none; background-color:#704247;}div.dhtmlx_window_active, div.dhx_modal_cover_dv { position: fixed !important; }
	</style>
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
									<li class="active"><a href="HomePageAdmin.aspx">Admin Homepage</a></li>
									<li><a href="ListAllMembers.aspx">List All Members</a></li>
									<li class="has-dropdown">
										<a href="ProposalsAdmin.aspx">Proposals</a>
										<ul class="dropdown">
											<li><a href="AddProposalAdmin.aspx">Add Proposal</a></li>
											
										</ul>
									</li>
									<li><asp:LinkButton OnClick="LinkButtonLogout_Click"  ID="LinkButtonLogout" runat="server">Logout</asp:LinkButton></li>
						
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
							<a href="index.html">
							CAN
                                <br />CLUB<span>.</span>
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
					<div class="row">
                        <h3><asp:Label  ID="LabelWelcome" runat="server" Text=""></asp:Label></h3>
                        
                        <br /><br />


                         <asp:GridView ID="GridViewLab3" CssClass="datagrid table" runat="server" AutoGenerateColumns="False"  >
        <AlternatingRowStyle />
        <Columns>
            <asp:TemplateField HeaderText="First Name">
                <ItemTemplate>
                    <asp:Label ID="Labelfname" Text='<%#Bind("firstName")%>' runat="server"></asp:Label>
                     
                </ItemTemplate>
            </asp:TemplateField>
          
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="Labelemail" Text='<%#Eval("email") %>'  runat="server"></asp:Label>
                     
                </ItemTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Admin">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBoxReviewer" Checked='<%#Convert.ToBoolean(Eval("isAdmin"))%>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    
    </asp:GridView>
    <br /><br />
    <asp:Button ID="ButtonSave" runat="server" OnClick="Save_Click"  Text="Save" />




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
								<h3><asp:Label ID="LabelUsernameAboutMe" runat="server" Text=""></asp:Label></h3>
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

