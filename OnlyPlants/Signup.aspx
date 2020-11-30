<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="OnlyPlants.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <link rel="shortcut icon" href="assets/images/onlyplants-1110x258.png" type="image/x-icon" />
    <meta name="description" content="" />

    <title>Sign Up</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css" />
    <link rel="stylesheet" href="assets/tether/tether.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css" />
    <link rel="stylesheet" href="assets/dropdown/css/style.css" />
    <link rel="stylesheet" href="assets/animatecss/animate.css" />
    <link rel="stylesheet" href="assets/formstyler/jquery.formstyler.css" />
    <link rel="stylesheet" href="assets/formstyler/jquery.formstyler.theme.css" />
    <link rel="stylesheet" href="assets/datepicker/jquery.datetimepicker.min.css" />
    <link rel="stylesheet" href="assets/socicon/css/styles.css" />
    <link rel="stylesheet" href="assets/theme/css/style.css" />
    <link rel="preload" href="assets/mobirise/css/mbr-additional.css" />
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css" />

    <style>
        .modal {
            text-align: center;
            padding: 0 !important;
        }

            .modal:before {
                content: '';
                display: inline-block;
                height: 100%;
                vertical-align: middle;
                margin-right: -4px;
            }

        .modal-dialog {
            display: inline-block;
            text-align: left;
            vertical-align: middle;
        }

        .modal-body {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="modal-new-secFolder" aria-hidden="true">
            <div class="modal-dialog" style="height: 150px; width: 250px;">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="mbr-fonts-style panel-text display-7" id="alert_msg" runat="server">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function ShowPopup() {
                $('#myModal').modal('show');
            }
        </script>
        <section class="menu menu2 cid-sgaMjCw33X" id="menu2-1i">
            <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
                <div class="container-fluid">
                    <div class="navbar-brand">
                        <span class="navbar-logo">
                            <a href="Default.aspx">
                                <img src="assets/images/onlyplants-1110x258.png" alt="OnlyPlants" style="height: 4.6rem;"/></a>
                        </span>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <div class="hamburger">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                            <li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="Products.aspx">Products</a></li>
                            <li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="Login.aspx">Login</a></li>
                            <li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="Order.aspx">Orders</a></li>
                        </ul>
                        <div class="navbar-buttons mbr-section-btn">
                            <a href="Checkout.aspx" runat="server" class="btn btn-primary display-4">
                                <span class="mbrib-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>Cart
                            </a>
                        </div>
                    </div>
                </div>
            </nav>
        </section>

        <section class="form7 cid-sgaWPLfnmj" id="form7-1l">
            <div class="container">
                <div style="margin-left: 100px" class="<%alertType %>" visible="true" id="alertmsg" runat="server">
                    <h4><strong>Oh no!</strong> User already exists. Try again.</h4>
                </div>
                <div class="mbr-section-head">
                    <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2">
                        <strong>Sign Up</strong>
                    </h3>
                </div>

                <div class="row justify-content-center mt-4">
                    <div class="col-lg-8 mx-auto mbr-form">
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="username">
                            <asp:TextBox runat="server" placeholder="Username" CssClass="form-control" ID="username_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="password">
                            <asp:TextBox runat="server" TextMode="Password" placeholder="Password" CssClass="form-control" ID="pass_tb"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="mbr-section-head">
                    <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2">
                        <strong>Personal Information</strong>
                    </h3>
                </div>

                <div class="row justify-content-center mt-4">
                    <div class="col-lg-8 mx-auto mbr-form">
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="firstName">
                            <asp:TextBox runat="server" placeholder="First Name" CssClass="form-control" ID="f_name_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="lastName">
                            <asp:TextBox runat="server" placeholder="Last Name" CssClass="form-control" ID="l_name_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="dateOfBirth">
                            <asp:TextBox runat="server" TextMode="Date" placeholder="Birthdate" CssClass="form-control" ID="bday_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="email">
                            <asp:TextBox runat="server" placeholder="Email Address" CssClass="form-control" ID="email_tb" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="phone">
                            <asp:TextBox runat="server" placeholder="Phone Number" TextMode="Phone" CssClass="form-control" ID="phone_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="address1">
                            <asp:TextBox runat="server" placeholder="Address 1" CssClass="form-control" ID="add1_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="address2">
                            <asp:TextBox runat="server" placeholder="Address 2" CssClass="form-control" ID="add2_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="city">
                            <asp:TextBox runat="server" placeholder="City" CssClass="form-control" ID="city_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="state">
                            <asp:TextBox runat="server" placeholder="State" CssClass="form-control" ID="state_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 form-group" data-for="zipcode">
                            <asp:TextBox runat="server" placeholder="Zipcode" CssClass="form-control" ID="zip_tb"></asp:TextBox>
                        </div>
                        <div class="col-auto mbr-section-btn align-center">
                            <asp:Button CssClass="btn btn-primary display-4" Text="Sign Up" runat="server" OnClick="signUp_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="footer3 cid-sgaNoV01rM" id="footer3-1j">
            <div class="container">
                <div class="media-container-row align-center mbr-white">
                    <div class="row row-links">
                        <ul class="foot-menu">
                            <li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white">About us</a>
                            </li>
                            <li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white">Services</a>
                            </li>
                            <li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                    <div class="row social-row">
                        <div class="social-list align-right pb-2">
                            <div class="soc-item">
                                <a href="https://twitter.com/loonatheworld">
                                    <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div>
                            <div class="soc-item">
                                <a href="https://www.facebook.com/loonatheworld/">
                                    <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div>
                            <div class="soc-item">
                                <a href="https://www.youtube.com/watch?v=b6li05zh3Kg&ab_channel=loonatheworld">
                                    <span class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div>
                            <div class="soc-item">
                                <a href="https://www.instagram.com/loonatheworld/">
                                    <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row row-copirayt">
                        <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">
                            © Copyright 2020 OnlyPlants. All Rights Reserved.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i class="mbr-arrow-up-icon mbr-arrow-up-icon-cm cm-icon cm-icon-smallarrow-up"></i></a></div>
        <input name="animation" type="hidden" />
    </form>
</body>
</html>
