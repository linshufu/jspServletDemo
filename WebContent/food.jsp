<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Tokyo Trip | お土産・グルメ</title>
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
<!-- font -->
<link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!-- parallax -->
	<script src="js/SmoothScroll.min.js"></script>
	<script src="js/jarallax.js"></script>
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
								<li><a class="active" href="food.jsp">お土産・グルメ</a></li>
								<li><a href="event.jsp" >イベント</a></li>
								<li><a href="hotel.jsp">宿泊</a></li>
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


	<!-- team -->
	<div class="more-bottom">
		<div class="container">
			<div class="more-bottom-heading">
				<h3>東京の美味しいレストラン</h3>

			</div>
			<div class="more-bottom-grids">
				<div class="col-md-4 more-bottom-grid">
					<div class="more-bottom-grid-info">
						<div class="more-bottom-grid-img">
							<a href="#"><img src="images/food2.jpg" alt="" /></a>
						</div>
						<div class="more-bottom-grid-text">
							<a href="#"><h4>Fish Bank TOKYO</h4></a>
							<p>東京を一望できるローケーションで大切な人と素敵な思い出を…</p>
							<h6><strong>住所	: </strong> 東京都港区東新橋1-5-2 汐留シティーセンター41F</p>
								<strong>アクセス	:</strong>ＪＲ山手線　新橋駅 汐留口より徒歩3分</p>
								<strong>営業時間	: </strong>夜　17:30 ～ 23:30(21:30)</h6>
						</div>
					</div>
				</div>
				<div class="col-md-4 more-bottom-grid">
					<div class="more-bottom-grid-info">
						<div class="more-bottom-grid-img">
							<a href="#"><img src="images/food4.jpg" alt="" /></a>
						</div>
						<div class="more-bottom-grid-text">
							<a href="#"><h4>ザ・ロビー／ザ・ペニンシュラ東京</h4></a>
							<p>生演奏と共にカジュアルから本格派まで、多彩な料理に触れる</p>
							<h6><strong>住所	: </strong> 東京都千代田区有楽町1-8-1　ザ・ペニンシュラ東京1F</p>
								<strong>アクセス	:</strong>東京メトロ有楽町線　有楽町駅　地下通路直結A7出口</p>
								<strong>営業時間	: </strong>夜　17:30 ～ 23:30(21:30)</h6>
						</div>
					</div>
				</div>
				<div class="col-md-4 more-bottom-grid">
					<div class="more-bottom-grid-info">
						<div class="more-bottom-grid-img">
							<a href="#"><img src="images/food3.jpg" alt="" /></a>
						</div>
						<div class="more-bottom-grid-text">
							<a href="#"><h4>ヘイフンテラス／ザ・ペニンシュラ東京</h4></a>
							<p>食材そのものの味を最高に生かした状態でお出しする香港スタイル</p>
							<h6><strong>住所	: </strong> 東京都千代田区有楽町1-8-1　ザ・ペニンシュラ東京2F</p>
								<strong>アクセス	:</strong>東京メトロ有楽町線　有楽町駅　A7出口</p>
								<strong>営業時間	: </strong>夜　17:30 ～ 23:30(21:30)</h6>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //team -->
	<!-- team -->
	<div class="more-bottom">
		<div class="container">

			<div class="more-bottom-grids">
				<div class="col-md-4 more-bottom-grid">
					<div class="more-bottom-grid-info">
						<div class="more-bottom-grid-img">
							<a href="#"><img src="images/food1.jpg" alt="" /></a>
						</div>
						<div class="more-bottom-grid-text">
							<a href="#"><h4>鉄板焼 銀明翠 GINZA</h4></a>
							<p>洗練された技のLIVE感とこだわりのお塩で味わう黒毛和牛を</p>
							<h6><strong>住所	: </strong> 東京都中央区銀座7丁目8-7 GINZA GREEN 8F</p>
								<strong>アクセス	:</strong>東京メトロ丸の内線 銀座駅A2出口徒歩5分</p>
								<strong>営業時間	: </strong>夜 17:00 ～ 22:00</h6>
						</div>
					</div>
				</div>
				<div class="col-md-4 more-bottom-grid">
					<div class="more-bottom-grid-info">
						<div class="more-bottom-grid-img">
							<a href="#"><img src="images/food5.jpg" alt="" /></a>
						</div>
						<div class="more-bottom-grid-text">
							<a href="#"><h4>銀座 芳園</h4></a>
							<p>銀座で厳選食材を使った中華料理とワインを完全個室で堪能</p>
							<h6><strong>住所	: </strong> 東京都中央区銀座7-8-15 第2新橋会館6F</p>
								<strong>アクセス	:</strong>東京メトロ線　銀座駅　A1出口</p>
								<strong>営業時間	: </strong>夜 17:00 ～ 22:00</h6>
						</div>
					</div>
				</div>
				<div class="col-md-4 more-bottom-grid">
					<div class="more-bottom-grid-info">
						<div class="more-bottom-grid-img">
							<a href="#"><img src="images/food6.jpg" alt="" /></a>
						</div>
						<div class="more-bottom-grid-text">
							<a href="#"><h4>中国料理 「王朝」／ヒルトン東京</h4></a>
							<p>高級中国料理の食べ放題から点心＆デザートのランチまで</p>
							<h6><strong>住所	: </strong> 東京都新宿区西新宿6-6-2 ヒルトン東京2F</p>
								<strong>アクセス	:</strong>JR線　新宿駅　…　西口より徒歩10分</p>
								<strong>営業時間	: </strong>夜 17:00 ～ 22:00</h6>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //team -->
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