﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uclTopSingle.ascx.cs" Inherits="LuyenThiHiep.Control.uclTopSingle" %>
<!--header start here-->
<div class="header1">
	<div class="container">
		 <div class="header-main">
				<!---->
					<div class="header-logo">
						<div class="logo">
						<a href="index.html"><img src="images/lo1.png" alt="" ></a>
						</div>
						<div class="top-nav">
							<span class="icon"><img src="images/menu.png" alt=""> </span>
							<ul>
								<li ><a href="index.html">Home</a> </li>
								<li ><a href="about.html" >About  </a> </li>
								<li><a href="typo.html"  >Short Codes</a></li>
								<li><a href="galley.html" >Gallery</a></li>
								<li><a href="contact.html" >Contact </a></li>
							</ul>
							<!--script-->
						<script>
						    $("span.icon").click(function () {
						        $(".top-nav ul").slideToggle(500, function () {
						        });
						    });
					</script>				
				</div>
				<div class="clearfix"> </div>
					</div>
			<!---->
			<div class="top-menu">					
					<ul>
						<li ><a href="index.html" >Home</a> </li>
						<li ><a href="about.html">About  </a> </li>
						<li><a href="typo.html">Short Codes</a></li>
						<li><a href="index.html"> <img src="images/lo1.png" alt=""> </a></li>
						<li><a href="galley.html">Gallery </a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><div class="header-login">
									 <div class="top-nav-right">
										<div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
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
											                    <input type="submit" id="login" value="Sign in">
											                	<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
											            	</fieldset>
											            <span><a href="#">Forgot your password?</a></span>
												 </form>
									        </div>
									  </div>
								   </div>
		                         </div>	</li>
					</ul>
				</div>
					<!--script-->
	 </div>
   </div>
</div>
<!--header end here-->