<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<title>Tokyo Trip | 東京観光サイト</title>
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
<link rel="stylesheet" href="css/ken-burns.css">
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- font -->
<link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script>
	function menu1(){
		window.scrollTo({ top: 680, behavior: 'smooth' })
	}
	function menu2(){
		window.scrollTo({ top: 1150, behavior: 'smooth' })
	}
	function menu3(){
		window.scrollTo({ top: 1750, behavior: 'smooth' })
	}
	</script>
</head>

<body>



	<!-- banner -->
	<div class="banner">
		<div class="top-banner">
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
								<li><a  href="spot.jsp" >観光スポット</a></li>
								<li><a  href="food.jsp" >お土産・グルメ</a></li>

								<li><a  href="#" onclick="menu3()">イベント</a></li>

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
	<div id="kb" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000" data-pause="hover">
            <!-- Wrapper for Slides -->
            <div class="carousel-inner" role="listbox">
                <!-- First Slide -->
                <div class="item active">
					<div class="slider">
						<div class="carousel-caption kb_caption slider-grid">
							<a href="spot.jsp"><h3>上野動物園</h3></a>
							<p>人気のパンダをはじめ300種以上の動物を飼育、公開している。</p>
						</div>
					</div>
                </div>

                <!-- Second Slide -->
                <div class="item">
					<div class="slider slider1">
						<div class="carousel-caption kb_caption kb_caption_right slider-grid">
							<a href="food.jsp"><h3>東京グルメ</h3></a>
							<p>東京の人気レストランをピックアップ。</p>
						</div>
					</div>
                </div>

                <!-- Third Slide -->
                <div class="item">
					<div class="slider slider2">
						<div class="carousel-caption kb_caption kb_caption_center slider-grid">
							<a href="spot.jsp"> <h3>水族館</h3></a>
							<p>水のいきものたちと親しむバラエティ豊富なプログラムやイベントが盛りだくさん。</p>
						</div>
					</div>
                </div>

            </div>
            <!-- Navigation Buttons -->
            <!-- Left Button -->
            <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
                <span class="fa fa-angle-left kb_icons" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <!-- Right Button -->
            <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
                <span class="fa fa-angle-right kb_icons" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
    </div>
	<!-- about -->
	<div class="about">
		<div class="container">
			<div class="w3l-about-heading">
				<h2>人気スポット</h2>
				<p>東京観光の見どころをエリア別にまとめてご紹介！名所からおしゃれな最新スポットまで東京旅行や都内デートで外せない観光スポット・遊び場を完全網羅！</P>
			</div>
			<div class="about-grids">
				<div class="col-md-3 about-grid">
					<div class="about-grid-info effect-1">
						<a href="spot.jsp"><h4>明治神宮</h4></a>
					</div>
				</div>
				<div class="col-md-3 about-grid">
					<div  class="about-grid-info about-grid-info1 effect-1">
						<a href="spot.jsp"><h4>上野動物園</h4></a>
					</div>
				</div>
				<div class="col-md-3 about-grid">
					<div class="about-grid-info about-grid-info2 effect-1">
						<a href="spot.jsp"><h4>すみだ水族館</h4></a>

					</div>
				</div>
				<div class="col-md-3 about-grid">
					<div class="about-grid-info about-grid-info3 effect-1">
						<a href="spot.jsp"><h4>浅草寺</h4></a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->

	<!-- offer -->
	<div class="team">
		<div class="container">
			<div class="agileinfo-team-heading">
				<h3>お土産・グルメ</h3>
				<p>一人でも大勢でも、ワインに合うおつまみや料理を楽しみながら気軽にワインが飲めるお店。</p>
			</div>
			<div class="team-grids">
				<div class="col-md-3 agileinfo-team-grid">
					<img src="images/f3.png" alt="" />
					<div class="captn">
						<h4>鉄板焼 銀明翠 GINZA</h4>

						<div class="w3l-social">
							<ul>

								<li><a href="food.jsp"><i class="fa fa-rss">予約</i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo-team-grid">
					<img src="images/f4.png" alt="" />
					<div class="captn">
						<h4>Fish Bank TOKYO</h4>

						<div class="w3l-social">
							<ul>

								<li><a href="food.jsp"><i class="fa fa-rss">予約</i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo-team-grid">
					<img src="images/f5.png" alt="" />
					<div class="captn">
						<h4>銀座 芳園</h4>

						<div class="w3l-social">
							<ul>

								<li><a href="food.jsp"><i class="fa fa-rss">予約</i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo-team-grid">
					<img src="images/f6.png" alt="" />
					<div class="captn">
						<h4>中国料理 「王朝」</h4>

						<div class="w3l-social">
							<ul>
								<li><a href="food.jsp"><i class="fa fa-rss">予約</i></a></li>>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //offer -->
	<!-- news -->
	<div class="news">
		<div class="container">
			<div class="news-heading">
				<h3>イベント</h3>
				<p>東京都内で開催される有名なお祭り情報をお届け。春夏秋冬と年間通して楽しめるお祭り情報が満載。</p>
			</div>
			<div class="news-grids">
				<div class="col-md-4 news-grid">
					<div class="agile-news-grid-info">
						<div class="news-grid-info-img">
							<a href="event.jsp"><img src="images/i11.png" alt="" /></a>
						</div>
						<div class="news-grid-info-bottom">
							<div class="date-grid">
								<div class="admin">
									<a href="#"><i class="fa fa-user" aria-hidden="true"></i> Admin</a>
								</div>
								<div class="time">
									<p><i class="fa fa-calendar" aria-hidden="true"></i> 2020/10/16</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-text">
								<a href="event.jsp">三社祭</a>
								<p>毎年5月に行われる浅草神社の例大祭。16日は、豪華なお囃子屋台や鳶頭木遣り、派手な衣装をまとい、びんざさら（木製の楽器）を打ち鳴らし五穀豊穣を祈願するびんざさら舞などが、大行列を作り練り歩く。17日は、お神輿約100基が浅草神社でお祓いを受け、各町会へ渡御。威勢のよい掛け声で町は熱気に包まれる。18日の本社神輿の宮入りで幕を閉じる。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 news-grid">
					<div class="agile-news-grid-info">
						<div class="news-grid-info-img">
							<a href="event.jsp"><img src="images/i22.png" alt="" /></a>
						</div>
						<div class="news-grid-info-bottom">
							<div class="date-grid">
								<div class="admin">
									<a href="#"><i class="fa fa-user" aria-hidden="true"></i> Admin</a>
								</div>
								<div class="time">
									<p><i class="fa fa-calendar" aria-hidden="true"></i> 2020/09/11</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-text">
								<a href="event.html">だらだら祭り</a>
								<p>関東の大神宮とも呼ばれる芝大神宮で催される秋の祭礼。祭事名は11日間という長い期間開催されることに由来。境内や神社の周辺に生姜市が立ち並ぶ。また、境内で起きた町火消しの鳶職と力士との乱闘事件を描いた“め組の喧嘩”の半纏展示、縁起物となっている千木筥(ちぎばこ)の授与を実施。9月15日(日)13:30からは神輿連合渡御が行われる。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 news-grid">
					<div class="agile-news-grid-info">
						<div class="news-grid-info-img">
							<a href="event.jsp"><img src="images/i33.png" alt="" /></a>
						</div>
						<div class="news-grid-info-bottom">
							<div class="date-grid">
								<div class="admin">
									<a href="#"><i class="fa fa-user" aria-hidden="true"></i> Admin</a>
								</div>
								<div class="time">
									<p><i class="fa fa-calendar" aria-hidden="true"></i> 2020/10/03</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-text">
								<a href="event.html">原宿表参道元氣祭</a>
								<p>明治神宮の夏の奉納祭りとして開催する、例年約100チームが参加する都内最大規模のよさこい祭り。全国はもとより海外からも集まったよさこいチームが、原宿・表参道の各会場で個性あふれる踊りを披露する。よさこいの本場高知の伝統と、流行の最先端である原宿・表参道とが融合した首都圏最大級のお祭です。熱氣溢れる演舞を披露します。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
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





	<script src="js/SmoothScroll.min.js"></script>
</body>
</html>


