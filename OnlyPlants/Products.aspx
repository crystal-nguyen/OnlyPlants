<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="OnlyPlants.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <link rel="shortcut icon" href="assets/images/onlyplants-1110x258.png" type="image/x-icon" />
    <meta name="description" content="" />

    <title>Products</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css" />
    <link rel="stylesheet" href="assets/tether/tether.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css" />
    <link rel="stylesheet" href="assets/dropdown/css/style.css" />
    <link rel="stylesheet" href="assets/animatecss/animate.css" />
    <link rel="stylesheet" href="assets/socicon/css/styles.css" />
    <link rel="stylesheet" href="assets/theme/css/style.css" />
    <link rel="preload" href="assets/mobirise/css/mbr-additional.css" />
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css" />
</head>
<body>
    <form runat="server">
        <section class="menu menu2 cid-sgaMjCw33X" id="menu2-2u">
            <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
                <div class="container-fluid">
                    <div class="navbar-brand">
                        <span class="navbar-logo">
                            <a href="Default.aspx">
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
                            <a href="Checkout.aspx" runat="server" class="btn btn-primary display-4">
                                <span class="mbrib-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>Cart
                            </a>
                        </div>
                    </div>
                </div>
            </nav>
        </section>

        <section class="features3 cid-sh346AQZK6" id="features3-2z">
            <div class="container">
                <div class="mbr-section-head">
                    <h4 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>Plants</strong></h4>
                </div>
                <div class="row mt-4">
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/small-monstera-1000x1000.jpg" data-slide-to="3" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Small Monsterra</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="100" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/large-fiddle-leaf-2048x2048.jpg" data-slide-to="0" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Large Fiddle Leaf</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="101" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/small-spider-plant-416x416.jpg" data-slide-to="1" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Small Spider Plant</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="102" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/large-aloe-vera-416x501.jpg" data-slide-to="3" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Large Aloe Vera</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="103" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="features3 cid-sh35nVUaEv" id="features3-36">
            <div class="container">
                <div class="row mt-4">
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/small-peace-lilly-416x541.jpg" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Small Peace Lilly</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="104" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/large-snake-plant-416x416.jpg" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Large Snake Plant</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="105" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/small-bromeliad-416x416.jpg" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Small Bromeliad</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="106" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/small-orchid-416x416.jpg" data-slide-to="3" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Small Orchid</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="107" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="features3 cid-sh35ShoWy6" id="features3-3b">
            <div class="container">
                <div class="mbr-section-head">
                    <h4 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>Seeds</strong></h4>
                </div>
                <div class="row mt-4">
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/dandelion-seed-416x278.jpg" data-slide-to="3" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Dandelion</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="1" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/sunflower-seed-416x520.jpg" data-slide-to="0" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Sunflower</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="2" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/zinnia-seed-416x416.jpg" data-slide-to="1" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Zinnia</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="3" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/dahlia-seed-416x416.jpg" data-slide-to="3" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Dahlia</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="4" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="features3 cid-sh35SK2Fnl" id="features3-3c">
            <div class="container">
                <div class="row mt-4">
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/petunia-seed-416x416.jpg" data-slide-to="0" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Petunia</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="5" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/pansy-seed-416x312.jpg" data-slide-to="1" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Pansy</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="6" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/calendula-seed-416x416.jpg" data-slide-to="2" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Calendula</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="7" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/cornflower-seed-416x312.jpg" data-slide-to="3" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Cornflower</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="8" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="features3 cid-sh35TawPBV" id="features3-3d">
            <div class="container">
                <div class="mbr-section-head">
                    <h4 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>Pots</strong><strong>
                    </strong></h4>
                </div>
                <div class="row mt-4">
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/small-red-pot-416x555.jpg" data-slide-to="3" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Small Red Pot</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="200" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/large-black-pot-416x300.jpg" data-slide-to="1" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Large Black Pot</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="201" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/large-white-pot-416x416.jpg" data-slide-to="2" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Large White Pot</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="202" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/large-sky-blue-pot-416x517.jpg" data-slide-to="3" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Large Sky Blue Pot</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="203" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="features3 cid-sh35Tzmdiq" id="features3-3e">
            <div class="container">
                <div class="row mt-4">
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/large-baby-pink-pot-416x624.jpg" data-slide-to="0" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Large Baby Pink Pot</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="204" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/small-aubergine-pot-416x416.jpg" data-slide-to="1" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Small Aubergine Pot</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="205" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/small-clay-pot-416x400.jpg" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Small Clay Pot</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="206" />
                            </div>
                        </div>
                    </div>
                    <div class="item features-image сol-12 col-md-6 col-lg-3">
                        <div class="item-wrapper">
                            <div class="item-img">
                                <img src="assets/images/small-black-glossy-pot-416x416.jpg" data-slide-to="3" alt="" />
                            </div>
                            <div class="item-content">
                                <h5 class="item-title mbr-fonts-style display-7"><strong>Small Black Glossy Pot</strong></h5>
                            </div>
                            <div class="mbr-section-btn item-footer mt-2">
                                <asp:Button Text="Add to Cart" CssClass="btn btn-primary display-7" runat="server" OnClick="OnAddToCart" ID="207" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="footer3 cid-sgaNoV01rM" id="footer3-2v">
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
            <a href="https://mobirise.site/f" style="flex: 1 1; height: 3rem; padding-left: 1rem;"></a>
            <p style="flex: 0 0 auto; margin: 0; padding-right: 1rem;"><a href="https://mobirise.site/w" style="color: #aaa;"></a></p>
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
        <script src="assets/theme/js/script.js"></script>

        <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i class="mbr-arrow-up-icon mbr-arrow-up-icon-cm cm-icon cm-icon-smallarrow-up"></i></a></div>
        <input name="animation" type="hidden" />
    </form>
</body>
</html>
