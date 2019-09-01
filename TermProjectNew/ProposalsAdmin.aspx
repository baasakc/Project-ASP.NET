<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProposalsAdmin.aspx.cs" Inherits="Proposals" %>


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
    <form  runat="server">
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
                            <div runat="server" class="row">

                                <asp:ListView ID="ListViewActivities" runat="server">
                                    <EmptyDataTemplate>
                                        <table runat="server">
                                            <tr>
                                                <td>No data was returned.</td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                    <EmptyItemTemplate>
                                        <td runat="server" />
                                    </EmptyItemTemplate>
                                    <GroupTemplate>
                                        <tr id="itemPlaceholderContainer" runat="server">
                                            <td id="itemPlaceholder" runat="server"></td>
                                        </tr>
                                    </GroupTemplate>
                                    <ItemTemplate>
                                        <td runat="server">
                                            <table border="0" style="width=60px;">
                                                <tr>
                                                    <td>&nbsp</td>
                                                    <td>
                                                        <asp:Image ID="ImageEvent" ImageUrl="Templete/checkmark.png" runat="server" />
                                                      
                                                        </a>&nbsp
                                                    </td>
                                                    <td >
                                                        <asp:Label ID="LabelTitle" runat="server" Text='<%#Eval("activity_name") %>'></asp:Label>
                                                        <span class="ProductListItem">
                                                            <br />
                                                            <asp:Label ID="LabelDesc"   runat="server"  Text='<%#Eval("activity_description") %>'></asp:Label>
                                                        </span>
                                                        <br />
                                                        <asp:LinkButton ID="LinkButtonSee" BackColor="yellow" CommandArgument='<%#Eval("activity_id") %>'  OnCommand="See_click" runat="server">See details.</asp:LinkButton>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="groupPlaceholderContainer" runat="server">
                                                        <tr id="groupPlaceholder" runat="server"></tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server"></td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>

                                </asp:ListView>


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
                            <h4>Paper</h4>
                            <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
                        </div>
                        <div class="col-md-4 col-md-push-1">
                            <h4>Links</h4>
                            <ul class="fh5co-footer-links">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">Lifestyle</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>

                        <div class="col-md-4 col-md-push-1">
                            <h4>Contact Information</h4>
                            <ul class="fh5co-footer-links">
                                <li>198 West 21th Street,
                                    <br>
                                    Suite 721 New York NY 10016</li>
                                <li><a href="tel://1234567920">+ 1235 2355 98</a></li>
                                <li><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
                                <li><a href="http://freehtml5.co">FreeHTML5.co</a></li>
                            </ul>
                        </div>

                    </div>

                    <div class="row copyright">
                        <div class="col-md-12 text-center">
                            <p>
                                <small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small>
                                <small class="block">Designed by <a href="http://freehtml5.co/" target="_blank">FreeHTML5.co</a> Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
                            </p>
                            <p>
                                <ul class="fh5co-social-icons">
                                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                    <li><a href="#"><i class="icon-dribbble"></i></a></li>
                                </ul>
                            </p>
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

