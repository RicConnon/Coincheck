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
<link rel="shortcut icon"
	href="/CryptNow/images/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="/CryptNow/resources/Style.css">
</head>

<body class="w3-light-grey">

	<!-- Top container -->
	<div class="w3-bar w3-top w3-black w3-large" style="z-index: 4">
		<button
			class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey"
			onclick="w3_open();">
			<i class="fa fa-bars"></i>  Menu
		</button>
		<span class="w3-bar-item w3-right"> <img
			src="images/favicon-32x32.png">
		</span>
	</div>

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidebar">
		<br>
		<div class="w3-container w3-row">
			<div class="w3-col s4">
				<img style="margin-top:16px" src="images/favicon-32x32.png"
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
		<header class="w3-container" style="padding-top: 22px">
			<h5>
				<b><i class="fa fa-dashboard"></i> Top Four:</b>
			</h5>
		</header>

		<div class="w3-row-padding w3-margin-bottom">
			<a href="/CryptNow/details/1.html">
				<div class="w3-quarter">
					<div class="w3-container w3-red w3-padding-16">
						<div class="w3-left">
							<img src=${rank1_pic} style="width: 60px; height: 60px;"></img>
						</div>
						<div class="w3-right">
							<h3>&euro;${rank1_price}</h3>
						</div>
						<div class="w3-clear"></div>
						<h4>${rank1}</h4>
					</div>
				</div>
			</a> <a href="/CryptNow/details/2.html">
				<div class="w3-quarter">
					<div class="w3-container w3-blue w3-padding-16">
						<div class="w3-left">
							<img src=${rank2_pic} style="width: 60px; height: 60px;"></img>
						</div>
						<div class="w3-right">
							<h3>&euro;${rank2_price}</h3>
						</div>
						<div class="w3-clear"></div>
						<h4>${rank2}</h4>
					</div>
				</div>
			</a> <a href="/CryptNow/details/3.html">
				<div class="w3-quarter">
					<div class="w3-container w3-teal w3-padding-16">
						<div class="w3-left">
							<img src=${rank3_pic} style="width: 60px; height: 60px;"></img>
						</div>
						<div class="w3-right">
							<h3>&euro;${rank3_price}</h3>
						</div>
						<div class="w3-clear"></div>
						<h4>${rank3}</h4>
					</div>
				</div>
			</a> <a href="/CryptNow/details/4.html">
				<div class="w3-quarter">
					<div class="w3-container w3-orange w3-text-white w3-padding-16">
						<div class="w3-left">
							<img src=${rank4_pic} style="width: 60px; height: 60px;"></img>
						</div>
						<div class="w3-right">
							<h3>&euro;${rank4_price}</h3>
						</div>
						<div class="w3-clear"></div>
						<h4>${rank4}</h4>
					</div>
				</div>
			</a>
		</div>

		<div class="w3-panel">
			<div class="w3-row-padding" style="margin: 0 -16px">

				<div class="w3">
					<h5>Coins</h5>
					<table class="w3-table w3-striped w3-white w3-hoverable" style="cursor: pointer">
						<tr onclick="document.location='/CryptNow/details/2.html'" class="w3-hover-red">
							<td><img id="small-coin-icon" src=${rank1_pic}></img></td>
							<td>${rank1}</td>
							<td><i>&euro;${rank1_price}</i></td>
						</tr>
						<tr onclick="document.location='/CryptNow/details/2.html'" class="w3-hover-blue">
							<td><img id="small-coin-icon" src=${rank2_pic}></img></td>
							<td>${rank2}</td>
							<td><i>&euro;${rank2_price}</i></td>
						</tr>
						<tr onclick="document.location='/CryptNow/details/3.html'" class="w3-hover-teal">
							<td><img id="small-coin-icon" src=${rank3_pic}></img></td>
							<td>${rank3}</td>
							<td><i>&euro;${rank3_price}</i></td>
						</tr>
						<tr onclick="document.location='/CryptNow/details/4.html'" class="w3-hover-orange">
							<td><img id="small-coin-icon" src=${rank4_pic}></img></td>
							<td>${rank4}</td>
							<td><i>&euro;${rank4_price}</i></td>
						</tr>
						<tr onclick="document.location='/CryptNow/details/5.html'" class="w3-hover-red">
							<td><img id="small-coin-icon" src=${rank5_pic}></img></td>
							<td>${rank5}</td>
							<td><i>&euro;${rank5_price}</i></td>
						</tr>
						<tr onclick="document.location='/CryptNow/details/6.html'" class="w3-hover-blue">
							<td><img id="small-coin-icon" src=${rank6_pic}></img></td>
							<td>${rank6}</td>
							<td><i>&euro;${rank6_price}</i></td>
						</tr>
						<tr onclick="document.location='/CryptNow/details/7.html'" class="w3-hover-teal">
							<td><img id="small-coin-icon" src=${rank7_pic}></img></td>
							<td>${rank7}</td>
							<td><i>&euro;${rank7_price}</i></td>
						</tr>
						<tr onclick="document.location='/CryptNow/details/8.html'" class="w3-hover-orange">
							<td><img id="small-coin-icon" src=${rank8_pic}></img></td>
							<td>${rank8}</td>
							<td><i>&euro;${rank8_price}</i></td>
						</tr>
						<tr onclick="document.location='/CryptNow/details/9.html'" class="w3-hover-red">
							<td><img id="small-coin-icon" src=${rank9_pic}></img></td>
							<td>${rank9}</td>
							<td><i>&euro;${rank9_price}</i></td>
						</tr>
						<tr onclick="document.location='/CryptNow/details/10.html'" class="w3-hover-blue">
							<td><img id="small-coin-icon" src=${rank10_pic}></img></td>
							<td>${rank10}</td>
							<td><i>&euro;${rank10_price}</i></td>
						</tr>
					</table>
					<button onclick="location.href='/CryptNow/reload.html'" 
					class="w3-button w3-white w3-border w3-round-large w3-right"
					style="margin-top: 10px">Refresh Coins</button>
				</div>
			</div>
		</div>
		<hr>
		<div class="w3-container">
			<h5>General Stats</h5>
			<p>Biggest Mover</p>
			<div class="w3-grey">
				<div id="container1" class="w3-container w3-center w3-padding w3-green"
					style="width:6.86%">${moverCoin}: ${mover}%</div>
			</div>

			<p>Biggest Loser</p>
			<div class="w3-grey">
				<div id="container2" class="w3-container w3-center w3-padding w3-red"
					style="width: 11.09%">${loserCoin}: ${loser}%</div>
			</div>
		</div>
		<hr>

		<div class="w3-container">
			<h5>Countries</h5>
			<table
				class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
				<tr>
					<td>United States</td>
					<td>65%</td>
				</tr>
				<tr>
					<td>UK</td>
					<td>15.7%</td>
				</tr>
				<tr>
					<td>Russia</td>
					<td>5.6%</td>
				</tr>
				<tr>
					<td>Spain</td>
					<td>2.1%</td>
				</tr>
				<tr>
					<td>India</td>
					<td>1.9%</td>
				</tr>
				<tr>
					<td>France</td>
					<td>1.5%</td>
				</tr>
			</table>
			<br>
			<button class="w3-button w3-dark-grey">
				More Countries  <i class="fa fa-arrow-right"></i>
			</button>
		</div>
		<hr>
		<div class="w3-container">
			<h5>Recent Users</h5>
			<ul class="w3-ul w3-card-4 w3-white">
				<li class="w3-padding-16"><img src="/w3images/avatar2.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Mike</span><br></li>
				<li class="w3-padding-16"><img src="/w3images/avatar5.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Jill</span><br></li>
				<li class="w3-padding-16"><img src="/w3images/avatar6.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Jane</span><br></li>
			</ul>
		</div>
		<hr>

		<div class="w3-container">
			<h5>Recent Comments</h5>
			<div class="w3-row">
				<div class="w3-col m2 text-center">
					<img class="w3-circle" src="/w3images/avatar3.png"
						style="width: 96px; height: 96px">
				</div>
				<div class="w3-col m10 w3-container">
					<h4>
						John <span class="w3-opacity w3-medium">Sep 29, 2014, 9:12
							PM</span>
					</h4>
					<p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum
						dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua.</p>
					<br>
				</div>
			</div>

			<div class="w3-row">
				<div class="w3-col m2 text-center">
					<img class="w3-circle" src="/w3images/avatar1.png"
						style="width: 96px; height: 96px">
				</div>
				<div class="w3-col m10 w3-container">
					<h4>
						Bo <span class="w3-opacity w3-medium">Sep 28, 2014, 10:15
							PM</span>
					</h4>
					<p>Sed do eiusmod tempor incididunt ut labore et dolore magna
						aliqua.</p>
					<br>
				</div>
			</div>
		</div>
		<br>
		<div class="w3-container w3-dark-grey w3-padding-32">
			<div class="w3-row">
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-green">Demographic</h5>
					<p>Language</p>
					<p>Country</p>
					<p>City</p>
				</div>
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-red">System</h5>
					<p>Browser</p>
					<p>OS</p>
					<p>More</p>
				</div>
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-orange">Target</h5>
					<p>Users</p>
					<p>Active</p>
					<p>Geo</p>
					<p>Interests</p>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<footer class="w3-container w3-padding-16 w3-light-grey">
			<h4>FOOTER</h4>
			<p>
				Powered by <a href="https://www.w3schools.com/w3css/default.asp"
					target="_blank">w3.css</a>
			</p>
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
