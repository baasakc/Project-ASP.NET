<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
	<title>CANCLUB Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="logo/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/util.css">
	<link rel="stylesheet" type="text/css" href="Content/main2.css">
<!--===============================================================================================-->
</head>
<body runat="server">
	
	<div class="limiter"  >
		<div class="container-login100" style="background-image: url('logo/bg-01.jpg');">
            <div ></div>
                
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
      <img style="width:400px; height:100px;  " src="logo/CANKAYA_UNIVERSITESI_LOGOLU_2.png" />
                <br />
				<form runat="server">
					<span class="login100-form-title p-b-49">
						
					</span>

					<div class="wrap-input100 validate-input m-b-23">
						<span class="label-input100">Email</span>
						<%--<input class="input100" type="text" name="username" placeholder="Type your username">--%>
                        <asp:TextBox class="input100" TextMode="Email" ID="TextBoxEmail" placeholder="Type your Email." runat="server" ></asp:TextBox>
						<span class="focus-input100" data-symbol="&#xf206;"></span> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBoxEmail" runat="server" ErrorMessage="Email is reauired"></asp:RequiredFieldValidator>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">Password</span>
						<%--<input class="input100" type="password" name="pass" placeholder="Type your password">--%>
                        <asp:TextBox ID="TextBoxPassword" class="input100" TextMode="password" placeholder="Type your password." runat="server"></asp:TextBox>
						<span class="focus-input100" data-symbol="&#xf190;"></span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxPassword" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
					</div>
					
			
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							
                            <asp:Button class="login100-form-btn" ID="ButtonLogin" OnClick="ButtonLogin_Click"  runat="server" Text="Button" />
						</div>
					</div>
                    <asp:Label ID="LabelResult" runat="server" Text=" " Visible="False"></asp:Label>

	

					<div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							Or Register Using
						</span>

						<a href="Register.aspx" class="txt2">
							Register
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>