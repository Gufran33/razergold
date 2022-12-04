

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<!-- Meta Tag -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name='copyright' content='bonik'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Site Title -->
<title>{$settings.site_name}</title>

<!-- Fav Icon -->
<link rel="icon" type="img/favicon.png" href="img/favicon.png">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,800;1,900&display=swap" rel="stylesheet">   

<!-- Theme Stylesheet -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/cube-portfolio.min.css">
<link rel="stylesheet" href="css/slicknav.min.css">
<link rel="stylesheet" href="css/maginific-popup.min.css">
<link rel="stylesheet" href="css/jquery.fancybox.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/animate-text.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">

<!-- Theme Default CSS -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="main.css">

<link rel="stylesheet" href="#" id="bonik_custom">	

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->	
</head>

<body>
<!--[if IE]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Preloader-Area --> 
<div class="preloader-area">
<div class="sk-cube-grid">
<div class="sk-cube sk-cube1"></div>
<div class="sk-cube sk-cube2"></div>
<div class="sk-cube sk-cube3"></div>
<div class="sk-cube sk-cube4"></div>
<div class="sk-cube sk-cube5"></div>
<div class="sk-cube sk-cube6"></div>
<div class="sk-cube sk-cube7"></div>
<div class="sk-cube sk-cube8"></div>
<div class="sk-cube sk-cube9"></div>
</div>
</div>
<!-- End-Preloader-Area --> 


<!-- Topbar -->
<div class="topbar">
<div class="container">
<div class="row">
<div class="col-lg-8 offset-lg-2 col-12">
<div class="topbar-address">
<ul>
<li><a href="https://t.me/"><i class="fa fa-telegram"></i><span>Telegram :</span> @</a></li>
<li><a href="mailto:support@{$settings.site_name}j"><i class="fa fa-envelope"></i><span>Email :</span> support@{$settings.site_name}</a></li>
<li><a href="#"><i class="fa fa-map-marker"></i><span>Location:</span> HOBART TAS 7000 AUSTRALIA</a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<!-- End Topbar -->

<!-- Header Start -->
<header class="header">
<div class="container">
<div class="row">
<div class="col-lg-12 col-12">
<div class="header-inner-top">
<div class="header-inner">
<div class="row">
<div class="col-lg-2 col-md-3 col-12">
	<!-- Logo -->
	<div class="logo">
		<a class="logo-1" href="?a=home"><img src="img/main-logo.png" alt="#"></a>
	</div>
	<!-- End-Logo -->
	<div class="mobile-nav"></div>
</div>
<div class="col-lg-10 col-md-9 col-12">
	<div class="main-menu-top">
		<div class="main-menu">
			<div class="navbar">
				<div class="nav-item">
					<!-- Main-Menu -->
					<ul class="nav-menu mobile-menu navigation">
						<li class="active"><a href="?a=home">HOME</a></li>
						<li><a href="?a=about">ABOUT</a></li>
						<li><a href="?a=faq">FAQ</a></li>
							{if $userinfo.logged != 1}  
							<li><a href="?a=login">LOGIN</a></li>
						<li><a href="?a=signup">SIGNUP</a></li>
    {else}
    <li><a href="?a=accout">ACCOUNT</a></li>
						<li><a href="?a=login">LOGOUT</a></li>
	   {/if}
							
						
		<li><a href="?a=support">CONTACT</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Menu-Right -->
		{if $userinfo.logged != 1}  
			<div class="menu-right">
		    			<a href="?a=signup" class="theme-btn">GET STARTED</a>
					</div>
    {else}
    	<div class="menu-right">
		    			<a href="?a=logout" class="theme-btn">LOGOUT</a>
					</div>
	   {/if}
	
		<!-- End-Menu-Right -->
	</div>
</div>
</div>	
</div>	
</div>	
</div>	
</div>	
</div>
</header>
<!-- End Header -->