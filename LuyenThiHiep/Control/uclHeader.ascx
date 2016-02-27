<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uclHeader.ascx.cs" Inherits="LuyenThiHiep.Control.uclHeader" %>
<!--header start here-->
<div class="header">
    <div class="container">
        <div class="header-main">
            <!---->
            <div class="header-logo">
                <div class="logo">
                    <a href="index.html">
                        <img src="/Content/images/lo1.png" /></a>
                </div>
                <div class="top-nav">
                    <span class="icon">
                        <img src="/Content/images/menu.png" alt="">
                    </span>
                    <ul>
                        <li><a href="/Default.aspx">Trang Chủ</a> </li>
                        <li><a href="about.html">About  </a></li>
                        <li><a href="typo.html">Short Codes</a></li>
                        <li><a href="galley.html">Gallery</a></li>
                        <li><a href="/Contact.aspx">Liên Hệ</a></li>
                        <li><a href="/Contact.aspx">Đăng Nhập</a></li>
                    </ul>
                    <!--script-->
                    <script>
                        $("span.icon").click(function () {
                            $(".top-nav ul").slideToggle(500, function () {
                            });
                        });
                    </script>
                </div>
                <div class="clearfix"></div>
            </div>
            <!---->
            <div class="top-menu">
                <ul>
                    <li><a href="/Default.aspx">Trang Chủ</a> </li>
                    <li><a href="about.html">About  </a></li>
                    <li><a href="typo.html">Short Codes</a></li>
                    <li><a href="index.html">
                        <img src="/Content/images/lo1.png" alt="">
                    </a></li>
                    <li><a href="galley.html">Gallery </a></li>
                    <li><a href="/Contact.aspx">Liên Hệ</a></li>
                    <li><a href="/Login.aspx">Đăng nhập</a></li>
                    <li>
                        <div class="header-login">
                            <div class="top-nav-right">
                                <div id="loginContainer">
                                    <a href="#" id="loginButton"><span>Login</span></a>
                                    <div id="loginBox">
                                        <form id="loginForm">
                                            <fieldset id="body">
                                                <fieldset>
                                                    <label for="email">Email Address</label>
                                                    <input type="text" name="email" id="email">
                                                </fieldset>
                                                <fieldset>
                                                    <label for="password">Password</label>
                                                    <input type="password" name="password" id="password">
                                                </fieldset>
                                                <input type="submit" id="login" value="Đăng nhập">
                                                <input type="submit" id="btnDangKi" value="Đăng kí">
                                                <label for="checkbox">
                                                    <input type="checkbox" id="checkbox">
                                                    <i>Remember me</i></label>
                                            </fieldset>
                                            <span><a href="#">Forgot your password?</a></span>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!--script-->
            <div class="bann-bottom">
                <h1 style="">Luyện Thi Đại Học Mạnh Hiệp</h1>
                <p>Chắp Cánh Những Ước Mơ Việt</p>
                <div class="bann-main">
                    <div class="col-md-4 bann-grid">
                        <img src="/Content/images/i1.png" alt="">
                        <h4>Porro Neque</h4>
                    </div>
                    <div class="col-md-4 bann-grid">
                        <img src="/Content/images/i2.png" alt="">
                        <h4>Porro Neque</h4>
                    </div>
                    <div class="col-md-4 bann-grid">
                        <img src="/Content/images/i3.png" alt="">
                        <h4>Porro Neque</h4>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--header end here-->
