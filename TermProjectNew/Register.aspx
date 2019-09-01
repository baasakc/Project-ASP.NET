<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Regitser" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>CANCLUB Register Form</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" />

    <!-- Main CSS-->
    <link href="Content/main.css" rel="stylesheet" />

</head>

<body>

    <div style="background-image: url('logo/bg-01.jpg');" class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">

        <div class="wrapper wrapper--w680">
            <div style="background: #ffffff" class="card card-4">
                <img style="width: 400px; height: 100px; margin-left: 150px; margin-top: 20px;" src="logo/CANKAYA_UNIVERSITESI_LOGOLU_2.png" />

                <div class="card-body">
                    <h2 class="title">CANCLUB Register Form</h2>
                    <form method="POST" runat="server">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">first name</label>
                                    <asp:TextBox ID="firstname" class="input--style-4" runat="server"></asp:TextBox>
                                    <%--<input class="input--style-4" type="text" name="first_name" id="firstname">--%>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">last name</label>
                                    <asp:TextBox ID="lastname" class="input--style-4" runat="server"></asp:TextBox>
                                    <%--<input class="input--style-4" type="text" name="last_name" id="lastname">--%>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Birthday</label>
                                    <div class="input-group-icon">
                                        <asp:TextBox ID="birthday" class="input--style-4" runat="server"></asp:TextBox>
                                        <%--<input class="input--style-4" type="text" name="birthday" id="birthday">--%>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Department</label>
                                    <asp:TextBox ID="department" class="input--style-4" runat="server"></asp:TextBox>
                                    <%--                                    <input class="input--style-4" type="text" name="department" id="department">--%>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <asp:TextBox class="input--style-4" ID="email" type="email" runat="server"></asp:TextBox>
                                    <%--     <input class="input--style-4" type="email" name="email" id="email">--%>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Password</label>
                                    <asp:TextBox class="input--style-4" type="password" ID="password" runat="server"></asp:TextBox>
                                    <%--<input class="input--style-4" type="password" name="password" id="password">--%>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Username</label>
                                    <asp:TextBox ID="TextBoxUsername" class="input--style-4" runat="server"></asp:TextBox>
                                    <%--<input class="input--style-4" type="text" name="username" id="username"/>--%>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <br />
                                    <label for="file">Choose an image:</label>
                                    <asp:FileUpload ID="FileUploadImage" runat="server" />
                                </div>
                            </div>
                        </div>
                    
                        <div class="col-2">
                            <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn--radius-2 btn--blue" OnClick="Button1_Click" />
                            <%--<button class="btn btn--radius-2 btn--blue" type="submit" id="submit">Submit</button>--%>
                        </div>
                        <asp:Label ID="LabelError" runat="server" Text="This email address is already exist." Visible="false"></asp:Label>
                        <asp:Label ID="LabelEmptyError" runat="server" Visible="false" Text="Boş alanları doldurun."></asp:Label>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
