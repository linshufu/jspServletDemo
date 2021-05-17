<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Tokyo Trip | 宿泊</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- gallery -->
<link href='css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
<!-- //gallery -->
<!-- font -->
<link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!-- parallax -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //parallax -->
</head>
<body>
	<!-- banner -->
	<div class="banner about-bg">
		<div class="top-banner about-top-banner">
			<div class="container">

				<div class="top-banner-right">
					<ul>
						<c:choose>
						<c:when test="${sessionScope.user_name==null}">
						<li><a  href="register.jsp">新規登録</a></li>
						<li><a  href="login.jsp">ログイン</a></li>
						</c:when>
						<c:when test="${sessionScope.user_name=='admin'}">
						<li><font color="#f0ffff">ようこそ</font>&nbsp&nbsp&nbsp<font color="#ffdab9">${sessionScope.user_name}</font><font color="#f0ffff">&nbspさん</font></li>
						<a href="findAllServlet"><font color="#f0ffff">ユーザー管理&nbsp&nbsp&nbsp</font></a>
						<a href="UserExitServlet"><font color="#f0ffff">ログアウト</font></a>
						</c:when>
						<c:otherwise>
						<li><font color="#f0ffff">ようこそ</font>&nbsp&nbsp&nbsp<font color="#ffdab9">${sessionScope.user_name}</font><font color="#f0ffff">&nbspさん</font></li>
						<a href="UserExitServlet"><font color="#f0ffff">ログアウト</font></a>
						</c:otherwise>
						</c:choose>

					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1>
						<a href="index.jsp">Tokyo Trip</a>
					</h1>
				</div>
				<div class="top-nav">
					<nav class="navbar navbar-default">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">Menu
							</button>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a  href="spot.jsp">観光スポット</a></li>
								<li><a href="food.jsp">お土産・グルメ</a></li>
								<li><a href="event.jsp" >イベント</a></li>
								<li><a class="active" href="hotel.jsp">宿泊</a></li>
								<li><a href="shop.jsp">ショッピング</a></li>
								<div class="clearfix"> </div>
							</ul>
						</div>
					</nav>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- a-about -->
	<div class="a-grid">
		<div class="container">
			<div class="w3l-about-heading">
				<h2>ホテル・旅館</h2>

			</div>
			<div class="gallery">
				<div class="gallery-bg">
					<div class="gallery-bg-text effect-2">
						<a href="images/h1.png" class="big"><img src="images/h1.png" alt=""  />三井ガーデンホテル</a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/h2.png"><img src="images/h2.png" alt="" />東京ドームホテル</a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/h3.png"><img src="images/h3.png" alt="" />ヒルトン東京お台場</a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/h4.png"><img src="images/h4.png" alt="" />グランドニッコー東京　台場</a>
					</div>
				</div>
				<div class="clearfix"></div>

				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/h5.png"><img src="images/h5.png" alt="" />品川プリンスホテル</a>
					</div>
				</div>
				<div class="gallery-bg">
					<div class="gallery-bg-text effect-2">
						<a href="images/g7.jpg" class="big"><img src="images/g7.jpg" alt=""  />東京プリンスホテル</a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/h7.png"><img src="images/h7.png" alt="" />星のや東京</a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/h8.png"><img src="images/h8.png" alt="" />ザ・プリンス　パークタワー東京</a>
					</div>
				</div>
				<div class="clearfix"></div>

				<div class="gallery-bg">
					<div class="gallery-bg-text effect-2">
						<a href="images/h13.png" class="big"><img src="images/h13.png" alt=""  />京王プラザホテル八王子</a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/h9.png"><img src="images/h9.png" alt="" />ホテルメトロポリタン丸の内</a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/h10.png"><img src="images/h10.png" alt="" />グランドプリンスホテル新高輪</a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/h11.png"><img src="images/h11.png" alt="" />ホテル椿山荘東京</a>
					</div>
				</div>
				<div class="clearfix"></div>

			</div>
			<script type="text/javascript" src="js/simple-lightbox.js"></script>
			<script>
				$(function(){
					var $gallery = $('.gallery a').simpleLightbox();

					$gallery.on('show.simplelightbox', function(){
						console.log('Requested for showing');
					})
					.on('shown.simplelightbox', function(){
						console.log('Shown');
					})
					.on('close.simplelightbox', function(){
						console.log('Requested for closing');
					})
					.on('closed.simplelightbox', function(){
						console.log('Closed');
					})
					.on('change.simplelightbox', function(){
						console.log('Requested for change');
					})
					.on('next.simplelightbox', function(){
						console.log('Requested for next');
					})
					.on('prev.simplelightbox', function(){
						console.log('Requested for prev');
					})
					.on('nextImageLoaded.simplelightbox', function(){
						console.log('Next image loaded');
					})
					.on('prevImageLoaded.simplelightbox', function(){
						console.log('Prev image loaded');
					})
					.on('changed.simplelightbox', function(){
						console.log('Image changed');
					})
					.on('nextDone.simplelightbox', function(){
						console.log('Image changed to next');
					})
					.on('prevDone.simplelightbox', function(){
						console.log('Image changed to prev');
					})
					.on('error.simplelightbox', function(e){
						console.log('No image found, go to the next/prev');
						console.log(e);
					});
				});
			</script>
		</div>
	</div>
	<!-- //a-about -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid">
					<div class="footer-grid-heading">
						<h4>Address</h4>
					</div>
					<div class="footer-grid-info">
						<p>エデン株式会社
							<span>東京都新宿区百人町4-9-2第二浅美ビル6階</span>

						</p>
						<p class="phone">Phone : 080-7821-8608
							<span>Email : <a href="mailto:example@email.com">acelinkk@yahoo.co.jp</a></span>
						</p>
					</div>
				</div>
			</div>
				<div class="col-md-3 footer-grid">
					<div class="footer-grid-heading">
						<h4>Navigation</h4>
					</div>
					<div class="footer-grid-info">
						<ul>
							<li><a href="index.jsp">ホーム</a></li>
							<li><a href="food.jsp">レストラン</a></li>
							<li><a href="hotel.jsp">宿泊</a></li>

						</ul>
					</div>
				</div>





		</div>
		<div class="copyright">
			<p>Copyright &copy; 2020.lin shufu All rights reserved.</p>
		</div>
	</div>
	<!-- //footer -->
</body>
</html>