<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Tokyo Trip | イベント</title>
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
<!-- //parallax -->
<script>
	function menu1(){
		window.scrollTo({ top: 220, behavior: 'smooth' })
	}
	function menu2(){
		window.scrollTo({ top: 1050, behavior: 'smooth' })
	}
	function menu3(){
		window.scrollTo({ top: 1840, behavior: 'smooth' })
	}
</script>
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
								<li><a class="active" href="event.jsp" >イベント</a></li>
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
	<!-- blog -->
		<div class="blog">
				<!-- container -->
				<div class="container">
					<div class="col-md-8 blog-top-left-grid">
						<div class="left-blog left-single">
							<div class="blog-left">
								<div class="single-left-left">

									<img src="images/i1.png" alt="" />
								</div>
								<div class="blog-left-bottom">
									<h3>日本を代表する祭礼の一つ、三社祭</h3>
									<P>毎年5月に行われる浅草神社の例大祭。今年は10月に延期して開催される。16日は、豪華なお囃子屋台や鳶頭木遣り、派手な衣装をまとい、びんざさら（木製の楽器）を打ち鳴らし五穀豊穣を祈願するびんざさら舞などが、大行列を作り練り歩く。17日は、お神輿約100基が浅草神社でお祓いを受け、各町会へ渡御。威勢のよい掛け声で町は熱気に包まれる。振袖さんや芸者さんの奉納舞踊。18日の本社神輿の宮入りで幕を閉じる。
									</P><br><br>

								<div class="blog-left-bottom left-bottom">
									<h4><strong>イベント情報</strong></h4>
									<h5><strong>開催期間	: </strong>2020年10月16日(金)～18日(日)</p>
										<strong>開催場所	:</strong>浅草神社</p>
										<strong>住所	:</strong>台東区浅草2-3-1</p>
										<strong>交通アクセス	: </strong>浅草駅より徒歩約5分</h5>
											</div>
								</div>

							</div>



						</div>
					</div>

					<div class="col-md-4 blog-top-right-grid">
						<div class="categories">
							<h3>イベント一覧</h3>
							<ul>
								<li><a href="#" onclick="menu1()">三社祭</a></li>
								<li><a href="#" onclick="menu2()">だらだら祭り</a></li>
								<li><a href="#" onclick="menu3()">原宿表参道元氣祭</a></li>

							</ul>
						</div>

					</div>
					<div class="clearfix"> </div>
				</div>
				<!-- //container -->
		</div>
		<!-- //blog -->
		<!-- blog -->
		<div class="blog">
			<!-- container -->
			<div class="container">
				<div class="col-md-8 blog-top-left-grid">
					<div class="left-blog left-single">
						<div class="blog-left">
							<div class="single-left-left">

								<img src="images/i2.png" alt="" />
							</div>
							<div class="blog-left-bottom">
								<h3>一千年の歴史を誇る芝大神宮の例祭</h3>
								<P>だらだら祭りは、芝大神宮で行われる秋の例祭。生姜奉納が行われることから、生姜祭りとも言われる。16日（水）例大祭祭儀。
								</P><br><br>
							</div>
							<div class="blog-left-bottom left-bottom">
								<h4><strong>イベント情報</strong></h4>
								<h5><strong>開催期間	: </strong>2020年9月11日(金)～21日(月)</p>
									<strong>開催場所	:</strong> 芝大神宮</p>
									<strong>住所	:</strong>港区芝大門1-12-7</p>
									<strong>交通アクセス	: </strong>都営大江戸線大門駅A6より徒歩約3分、JR浜松町駅北口より徒歩約10分</h5>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //container -->
	</div>
	<!-- //blog -->
	<!-- blog -->
	<div class="blog">
		<!-- container -->
		<div class="container">
			<div class="col-md-8 blog-top-left-grid">
				<div class="left-blog left-single">
					<div class="blog-left">
						<div class="single-left-left">

							<img src="images/i3.png" alt="" />
						</div>
						<div class="blog-left-bottom">
							<h3>高知の伝統を原宿・表参道で感じる</h3>
							<P>明治神宮の夏の奉納祭りとして開催する、例年約100チームが参加する都内最大規模のよさこい祭り。全国はもとより海外からも集まったよさこいチームが、原宿・表参道の各会場で個性あふれる踊りを披露する。
							</P><br><br>
						</div>
						<div class="blog-left-bottom left-bottom">
							<h4><strong>イベント情報</strong></h4>
							<h5><strong>開催期間	: </strong>2020年10月3日(土)・4日(日) 雨天決行
								</p>
								<strong>開催場所	:</strong> 	原宿・表参道・明治神宮・代々木公園・NHK前ケヤキ並木通り</p>
								<strong>住所	:</strong>東京都渋谷区、港区</p>
								<strong>交通アクセス	: </strong>JR原宿駅・東京メトロ明治神宮前〈原宿〉駅・表参道駅からすぐ</h5>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //container -->
</div>
<!-- //blog -->
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