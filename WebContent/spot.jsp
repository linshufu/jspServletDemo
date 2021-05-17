<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Tokyo Trip | 観光スポット</title>
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
								<li><a class="active" href="spot.jsp">観光スポット</a></li>
								<li><a href="food.jsp">お土産・グルメ</a></li>
								<li><a href="event.jsp">イベント</a></li>
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
	<!-- a-about -->
	<div class="a-grid">
		<div class="container">
			<div class="w3l-about-heading">
				<h2>人気スポット</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras porta efficitur ante quis volutpat.</p>
			</div>
			<div class="agileits-a-about-grids">
				<div class="col-md-5 agileits-a-about-left">
					<img src="images/skytree1.jpg" alt="" />
				</div>
				<div class="col-md-7 agileits-a-about-right">
					<h3>東京スカイツリー</h3>
					<h4>高さ634mの世界一高い自立式電波塔。空に向かって伸びる大きな木をイメージした造り。地上350mと450mの位置に展望台が設置され、450mからは晴天時、約75km先まで見渡せる。 </h4><br><br>
					<h4>スポット情報</h4>
						<h5><strong>住所	: </strong>東京都墨田区押上１丁目１－２</p>
							<strong>アクセス	:</strong> 東武スカイツリーラインとうきょうスカイツリー駅からすぐ</p>
							<strong>駐車場	:</strong>駐車場　あり</p>
							<strong>営業時間	: </strong>8:00～21:00（閉館22:00）</h5>

				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //a-about -->
	<!-- a-about -->
	<div class="a-grid">
		<div class="container">

			<div class="agileits-a-about-grids">
				<div class="col-md-5 agileits-a-about-left">
					<img src="images/ueno1.jpg" alt="" />
				</div>
				<div class="col-md-7 agileits-a-about-right">
					<h3>上野動物園</h3>
					<h4>日本初の動物園として明治15（1882）年に開園。約350種2500点の動物たちを飼育展示している。2頭のジャイアントパンダ、リーリーとシンシンをはじめ、ハシビロコウなど人気の動物たちがいっぱい。 </h4><br><br>
					<h4>スポット情報</h4>
						<h5><strong>住所	: </strong>東京都台東区上野公園９－８３</p>
							<strong>アクセス	:</strong> JR上野駅から徒歩5分</p>
							<strong>駐車場	:</strong>駐車場　あり</p>
							<strong>営業時間	: </strong>9:30～16:00（閉園17:00）</h5>

				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //a-about -->
	<!-- a-about -->
	<div class="a-grid">
		<div class="container">

			<div class="agileits-a-about-grids">
				<div class="col-md-5 agileits-a-about-left">
					<img src="images/meiji1.jpg" alt="" />
				</div>
				<div class="col-md-7 agileits-a-about-right">
					<h3>明治神宮</h3>
					<h4>約70万平方メートルにも及ぶ豊かな森に囲まれた神社。初詣者数は三が日で300万人以上と、例年日本一を記録していることでも知られている。清正井など見どころも満載。2020年には鎮座百年を迎える。 </h4><br><br>
					<h4>スポット情報</h4>
						<h5><strong>住所	: </strong>東京都渋谷区代々木神園町１－１</p>
							<strong>アクセス	:</strong> JR山手線原宿駅からすぐ</p>
							<strong>駐車場	:</strong>駐車場　あり</p>
							<strong>営業時間	: </strong>境内自由（御苑は9:00～16:00＜時期により異なる＞）</h5>

				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //a-about -->
	<!-- a-about -->
	<div class="a-grid">
		<div class="container">

			<div class="agileits-a-about-grids">
				<div class="col-md-5 agileits-a-about-left">
					<img src="images/asakusa1.jpg" alt="" />
				</div>
				<div class="col-md-7 agileits-a-about-right">
					<h3>浅草寺</h3>
					<h4>国内外から毎年3000万人以上が訪れる、都内最古の仏教寺院。ランドマークの雷門や、境内、五重塔など見どころ充実。参道は「仲見世通り」として知られ、レトロな食べ歩きが楽しめる。 </h4><br><br>
					<h4>スポット情報</h4>
						<h5><strong>住所	: </strong>東京都台東区浅草２丁目３－１</p>
							<strong>アクセス	:</strong> 東武スカイツリーライン浅草駅から徒歩5分</p>
							<strong>駐車場	:</strong>駐車場　あり</p>
							<strong>営業時間	: </strong>6:00〜17:00、10月〜3月は6:30〜</h5>

				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //a-about -->
	<!-- a-about -->
	<div class="a-grid">
		<div class="container">

			<div class="agileits-a-about-grids">
				<div class="col-md-5 agileits-a-about-left">
					<img src="images/sun1.jpeg" alt="" />
				</div>
				<div class="col-md-7 agileits-a-about-right">
					<h3>すみだ水族館</h3>
					<h4>飼育現場を見ることができたり、飼育スタッフに説明を聞くこともできる。より生き物を近くに感じられる工夫がなされています。決められた順路はなく、館内を自由に行き来しそれぞれの楽しみ方で水槽の鑑賞ができる点も魅力の一つです。</h4><br>
					<h4>スポット情報</h4>
						<h5><strong>住所	: </strong>東京都墨田区押上一丁目1番2号 東京スカイツリータウン・ソラマチ5F･6F</p>
							<strong>アクセス	:</strong> 東武スカイツリーライン「とうきょうスカイツリー」駅 すぐ</p>
							<strong>駐車場	:</strong>駐車場　あり</p>
							<strong>営業時間	: </strong>9:00～21:00（入場受付は閉館の1時間前まで)</h5>

				</div>
				<div class="clearfix"> </div>
			</div>
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