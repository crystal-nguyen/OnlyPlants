<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlyPlants.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <link rel="shortcut icon" href="assets/images/onlyplants-1110x258.png" type="image/x-icon" />
    <meta name="description" content="" />

    <title>Login</title>
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
</head>
<body>
    <form runat="server">

        <script>
            function Fail() {
                alert("Failed to log in!");
            }
        </script>

        <section class="menu menu2 cid-sgaMjCw33X" id="menu2-1b">
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
                                <span class="mbrib-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                                Cart
                            </a>
                        </div>
                    </div>
                </div>
            </nav>
        </section>

        <section class="form3 cid-sgaXq39bUJ" id="form3-1m">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-7 col-12">
                        <div class="image-wrapper">
                            <img class="w-100" src="assets/images/header-1-2000x1333.jpg" alt="Mobirise"/>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1 mbr-form" data-form-type="formoid">
                        <div class="">
                            <div hidden="hidden" data-form-alert="" class="alert alert-success col-12">
                                Thanks for filling out
                            the form!
                            </div>
                            <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">
                                Oops...! some
                            problem!
                            </div>
                        </div>
                        <div class="dragArea row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <h1 class="mbr-section-title mb-4 display-2"><strong>Log In</strong></h1>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                            </div>
                            <div data-for="name" class="col-lg-12 col-md col-sm-12 form-group">
                                <asp:TextBox CssClass="form-control" placeholder="Username" ID="username" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-12 col-md col-sm-12 form-group" data-for="email">
                                <asp:TextBox CssClass="form-control" placeholder="Password" ID="password" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-auto col-12 mbr-section-btn">
                                <asp:Button CssClass="btn btn-black display-4" OnClick="submit_Click" Text="Log In" runat="server" ID="login" />
                            </div>
                        </div>
                    </div>
                    <div class="offset-lg-1"></div>
                </div>
            </div>
        </section>

        <section class="info1 cid-sgb2NsZ6GH" id="info1-2e">
            <div class="align-center container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-8">
                        <h3 class="mbr-section-title mb-4 mbr-fonts-style display-2">
                            <strong>Join Our Community</strong>
                        </h3>
                        <div class="mbr-section-btn">
                            <a href="~/SignUp" class="nav-link link text-black text-primary display-4" runat="server">Sign Up</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="footer3 cid-sgaNoV01rM" id="footer3-1c">
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
