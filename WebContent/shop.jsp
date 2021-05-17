<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Tokyo Trip | ショッピング</title>
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
								<li><a href="food.jsp">お土産・グルメ</a></li>
								<li><a href="event.jsp" >イベント</a></li>
								<li><a href="hotel.jsp">宿泊</a></li>
								<li><a class="active" href="shop.jsp">ショッピング</a></li>
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
				<h3>人気ショッピングモール</h3>

			</div>
			<div class="more-bottom-grids">
				<div class="col-md-4 more-bottom-grid">
					<div class="more-bottom-grid-info">
						<div class="more-bottom-grid-img">
							<img src="images/s1.png" alt="" />
						</div>
						<div class="more-bottom-grid-text">
							<h3>東京ソラマチ</h3>
							<p>2012年5月に誕生した、バラエティ豊かな312店舗が集う商業施設である「東京ソラマチ」。
								東京スカイツリータウン内に位置し、東京スカイツリーとともに都心と東武沿線、日本と世界とを結ぶゲートシティを目指した新しい下町のにぎわいを感じさせる作りが、
								日本国内のみならず海外の観光客にも人気のスポットです。	テナント部は、多くのイベントも実施しています。</p><br>
							<strong>所在地 :</strong><h6>〒131-0045　 東京都墨田区押上一丁目1番2号</h6>
							<strong>交通アクセス :</strong><h6>東武スカイツリーライン「とうきょうスカイツリー」駅 すぐ </h6>
						</div>
					</div>
				</div>
				<div class="col-md-4 more-bottom-grid">
					<div class="more-bottom-grid-info">
						<div class="more-bottom-grid-img">
							<img src="images/s2.png" alt="" />
						</div>
						<div class="more-bottom-grid-text">
							<h3>六本木ヒルズ</h3>
							<p>東京の新名所。発案より17年、民間主導の再開発事業として国内最大規模を誇る新しい街が２００３年４月に誕生。ランドマークとなる「六本木ヒルズ森タワー」を中心にホテル、映画館や商業施設、美術館、展望台などが集結。多くの店舗がここにしかないオンリーワンを掲げており、密やかな贅沢を手にできる。
							ここにしかないスペシャリティが集結</p><br>
							<strong>所在地 :</strong><h6>〒106-0032　 東京都港区六本木6</h6>
							<strong>交通アクセス :</strong><h6>地下鉄日比谷線六本木駅よりすぐ、又は地下鉄大江戸線六本木駅より徒歩4分 </h6>

						</div>
					</div>
				</div>
				<div class="col-md-4 more-bottom-grid">
					<div class="more-bottom-grid-info">
						<div class="more-bottom-grid-img">
							<img src="images/s3.png" alt="" />
						</div>
						<div class="more-bottom-grid-text">
							<h3>アクアシティお台場</h3>

							<p>地中海の街並をイメージしたパステルカラーの外観がひときわ目立つ、フジテレビ正面に立つショッピングモール。ファッション、コスメ、アクセサリー、雑貨、インテリア等、約１２０店舗が集まっている。特に約50店舗あるレストランが充実。なかには深夜営業の店もあるので、お台場の夜をゆっくり満喫したい。

								リゾート気分でゆったり優雅にお買い物</p><br>
							<strong>所在地 :</strong><h6>〒135-0091　 東京都港区台場1-7-1</h6>
							<strong>交通アクセス :</strong><h6>ゆりかもめ線台場駅より徒歩1分、又はJRりんかい線東京テレポート駅より徒歩6分 </h6>
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