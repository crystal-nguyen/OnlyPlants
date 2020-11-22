<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="OnlyPlants.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <link rel="shortcut icon" href="assets/images/onlyplants-1110x258.png" type="image/x-icon" />
    <meta name="description" content="" />

    <title>Orders</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons2/mobirise2.css" />
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css" />
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css" />
    <link rel="stylesheet" href="assets/tether/tether.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css" />
    <link rel="stylesheet" href="assets/dropdown/css/style.css" />
    <link rel="stylesheet" href="assets/animatecss/animate.css" />
    <link rel="stylesheet" href="assets/socicon/css/styles.css" />
    <link rel="stylesheet" href="assets/theme/css/style.css" />
    <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css" />
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
        <section class="menu menu2 cid-sgaMjCw33X" once="menu" id="menu2-2r">
            <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
                <div class="container-fluid">
                    <div class="navbar-brand">
                        <span class="navbar-logo">
                            <a href="Default.aspx">
                                <img src="./assets/images/onlyplants-1110x258.png" alt="OnlyPlants" style="height: 4.6rem;"></a>
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
                            <li class="nav-item">
                                <a href="~/Products" runat="server" class="nav-link link text-black text-primary display-4">Products</a>
                            </li>
                            <li class="nav-item">
                                <a href="~/Login" runat="server" class="nav-link link text-black text-primary display-4">Login</a>
                            </li>
                            <li class="nav-item">
                                <a href="~/Order" runat="server" class="nav-link link text-black text-primary display-4">Orders</a>
                            </li>
                        </ul>
                        <div class="navbar-buttons mbr-section-btn">
                            <a href="~/Checkout" runat="server" class="btn btn-primary display-4">
                                <span class="mbrib-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>Cart
                            </a>
                        </div>
                    </div>
                </div>
            </nav>
        </section>
        <section class="content17 cid-sh2ujAWPl2" id="content17-2t">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10">
                        <div class="section-head align-center mb-4">
                            <h3 class="mbr-section-title mb-0 mbr-fonts-style display-2">
                                <strong>Order History</strong></h3>
                        </div>
                        <div id="bootstrap-toggle" class="toggle-panel accordionStyles tab-content">
                            <div class="card mb-3">
                                <div class="card-header" role="tab" id="headingOne">
                                    <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-core="" href="#collapse1_4" aria-expanded="false" aria-controls="collapse1">
                                        <h6 class="panel-title-edit mbr-fonts-style mb-0 display-7"><strong>Order 1</strong></h6>
                                        <span class="sign mbr-iconfont mbri-arrow-down"></span>
                                    </a>
                                </div>
                                <div id="collapse1_4" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                        <asp:Label ID="lblOrder1" runat="server" CssClass="mbr-fonts-style panel-text display-7" Text="lblOrder1"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-3">
                                <div class="card-header" role="tab" id="headingTwo">
                                    <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-core="" href="#collapse2_4" aria-expanded="false" aria-controls="collapse2">
                                        <h6 class="panel-title-edit mbr-fonts-style mb-0 display-7"><strong>Order 2</strong></h6>
                                        <span class="sign mbr-iconfont mbri-arrow-down"></span></a>
                                </div>
                                <div id="collapse2_4" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        <asp:Label ID="lblOrder2" runat="server" CssClass="mbr-fonts-style panel-text display-7" Text="lblOrder2"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="footer3 cid-sgaNoV01rM" once="footers" id="footer3-1c">
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
        <section style="background-color: #fff; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Helvetica Neue', Arial, sans-serif; color: #aaa; font-size: 12px; padding: 0; align-items: center; display: flex;">
            <a href="https://mobirise.site/a" style="flex: 1 1; height: 3rem; padding-left: 1rem;"></a>
        </section>

        <script src="assets/web/assets/jquery/jquery.min.js"></script>
        <script src="assets/popper/popper.min.js"></script>
        <script src="assets/tether/tether.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/smoothscroll/smooth-scroll.js"></script>
        <script src="assets/dropdown/js/nav-dropdown.js"></script>
        <script src="assets/dropdown/js/navbar-dropdown.js"></script>
        <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
        <script src="assets/viewportchecker/jquery.viewportchecker.js"></script>
        <script src="assets/mbr-switch-arrow/mbr-switch-arrow.js"></script>
        <script src="assets/theme/js/script.js"></script>

        <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i class="mbr-arrow-up-icon mbr-arrow-up-icon-cm cm-icon cm-icon-smallarrow-up"></i></a></div>
        <input name="animation" type="hidden" />
    </form>
</body>
</html>
