<!DOCTYPE html>
<html>
<title>CryptNow</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}
</style>

<head>
<link rel="shortcut icon" href="/CryptNow/images/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="/CryptNow/resources/Style.css">
</head>

<body class="w3-light-grey">

	<!-- Top container -->
	<div class="w3-bar w3-top w3-black w3-large" style="z-index: 4">
		<button
			class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey"
			onclick="w3_open();">
			<i class="fa fa-bars"></i>  Menu
		</button>
		<span class="w3-bar-item w3-right">Logo</span>
	</div>

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidebar">
		<br>
		<div class="w3-container w3-row">
			<div class="w3-col s4">
				<img style="margin-top: 16px" src="images/favicon-32x32.png"
					class="w3-circle w3-margin-right" style="width: 46px">
			</div>
			<div class="w3-col s8 w3-bar">
				<h2>CryptNow</h2>
			</div>
		</div>
		<hr>
		<div class="w3-container">
			<h5>Dashboard</h5>
		</div>
		<div class="w3-bar-block">
			<a href="#"
				class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
				onclick="w3_close()" title="close menu"><i
				class="fa fa-remove fa-fw"></i>  Close Menu</a> <a href="#"
				class="w3-bar-item w3-button w3-padding w3-blue"><i
				class="fa fa-users fa-fw"></i>  Overview</a> <a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-eye fa-fw"></i>  Views</a> <a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-users fa-fw"></i>  Traffic</a> <a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bullseye fa-fw"></i>  Geo</a> <a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-diamond fa-fw"></i>  Orders</a> <a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bell fa-fw"></i>  News</a> <a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bank fa-fw"></i>  General</a> <a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-history fa-fw"></i>  History</a> <a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-cog fa-fw"></i>  Settings</a><br> <br>
		</div>
	</nav>


	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px; margin-top: 43px;">

		<!-- Header -->
		<header class="w3-container" style="padding-top: 22px"> </header>

		<div class="w3-row-padding w3-margin-bottom">
			<div class="w3-twothird">
				<div class="w3-container w3-red w3-padding-16">
					<div class="w3-left">
						<img id="coin-icon" class="w3-quarter" src=${img_location}></img>
					</div>
					<div id="inner">
						<h4>${coin_name}</h4>
					</div>
					<div class="w3-right">
						<h3>&euro;${coin_price}</h3>
					</div>
					<div class="w3-clear"></div>
				</div>
			</div>
		</div>

		<div class="w3-panel">
			<div class="w3-row-padding" style="margin: 0 -16px">

				<div class="w3-twothird">
					<h5>${coin_name}</h5>
					<table class="w3-table w3-striped w3-white">
						<tr>
							<td><i class="fa fa-user w3-text-blue w3-large"></i></td>
							<td>Price</td>
							<td><i><b>&euro;${coin_price}</b></i></td>
						</tr>
						<tr>
							<td><i class="fa fa-bell w3-text-red w3-large"></i></td>
							<td>Market Cap</td>
							<td><i><b>&euro;${market_cap_eur}</b></i></td>
						</tr>
						<tr>
							<td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
							<td>Volume (24h)</td>
							<td><i><b>&euro;${day_volume_eur}</b></i></td>
						</tr>
						<tr>
							<td><i class="fa fa-comment w3-text-red w3-large"></i></td>
							<td>Circulating Supply</td>
							<td><i><b>&euro;${total_supply}</b></i></td>
						</tr>
						<tr>
							<td><i class="fa fa-bookmark w3-text-blue w3-large"></i></td>
							<td>Change (1h)</td>
							<td><i><b>&#37;${change_1h}</b></i></td>
						</tr>
						<tr>
							<td><i class="fa fa-laptop w3-text-red w3-large"></i></td>
							<td>Change (24h)</td>
							<td><i><b>&#37;${change_24h}</b></i></td>
						</tr>
						<tr>
							<td><i class="fa fa-share-alt w3-text-green w3-large"></i></td>
							<td>Change (7d)</td>
							<td><i><b>&#37;${change_7d}</b></i></td>
						</tr>
					</table>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<footer class="w3-container w3-padding-16 w3-light-grey">
			<button onclick="location.href='/CryptNow/coins.html'"
				class="w3-button w3-white w3-border w3-round-large">Back</button>
		</footer>

		<!-- End page content -->
	</div>

	<script>
		// Get the Sidebar
		var mySidebar = document.getElementById("mySidebar");

		// Get the DIV with overlay effect
		var overlayBg = document.getElementById("myOverlay");

		// Toggle between showing and hiding the sidebar, and add overlay effect
		function w3_open() {
			if (mySidebar.style.display === 'block') {
				mySidebar.style.display = 'none';
				overlayBg.style.display = "none";
			} else {
				mySidebar.style.display = 'block';
				overlayBg.style.display = "block";
			}
		}

		// Close the sidebar with the close button
		function w3_close() {
			mySidebar.style.display = "none";
			overlayBg.style.display = "none";
		}
	</script>

</body>
</html>
