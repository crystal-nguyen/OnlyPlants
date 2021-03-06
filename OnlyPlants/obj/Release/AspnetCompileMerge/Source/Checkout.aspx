﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="OnlyPlants.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <link rel="shortcut icon" href="assets/images/onlyplants-1110x258.png" type="image/x-icon" />

    <title>Checkout</title>
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
        <section class="menu menu2 cid-sgaMjCw33X" id="menu2-12">
            <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
                <div class="container-fluid">
                    <div class="navbar-brand">
                        <span class="navbar-logo">
                            <a href="Default.aspx" runat="server">
                                <img src="assets/images/onlyplants-1110x258.png" alt="OnlyPlants" style="height: 4.6rem;" /></a>
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
                            <a class="btn btn-primary display-4" href="Checkout.aspx"><span class="mbrib-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>Cart</a>
                        </div>
                    </div>
                </div>
            </nav>
        </section>

        <section class="form5 cid-sgb0vDhjlS" id="form5-2d">
            <div class="container">
                <div class="mbr-section-head">
                    <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>Checkout</strong></h3>
                </div>
                <div class="row justify-content-center mt-4">
                    <div class="dragArea row">
                        <div class="col-md col-sm-12 form-group" data-for="name">
                            <asp:TextBox placeholder="Name" CssClass="form-control" ID="name_tb" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md col-sm-12 form-group" data-for="email">
                            <asp:TextBox placeholder="E-mail" CssClass="form-control" ID="email_tb" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-12 form-group" data-for="url">
                            <asp:TextBox runat="server" placeholder="Card Number" CssClass="form-control" ID="card_tb"></asp:TextBox>
                        </div>
                        <div class="col-12 form-group" data-for="textarea">
                            <asp:TextBox runat="server" placeholder="Additional notes" CssClass="form-control" ID="order_items"></asp:TextBox>
                        </div>
                        <div class="col-12 form-group" data-for="textarea">
                            <asp:TextBox runat="server" TextMode="MultiLine" placeholder="Leave additional notes" CssClass="form-control" ID="notes_tb"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn">
                            <asp:Button Text="Submit Order" CssClass="btn btn-primary display-4" runat="server" OnClick="submit_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="footer3 cid-sgaNoV01rM" id="footer3-13">
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
