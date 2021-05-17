<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>ログイン画面</title>

<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->





</head>
<style>

*{

    text-decoration: none;
    list-style: none;
}


    table tr td{
    border: 10px solid rgba(255, 255, 255, .4);

    }
    .db{
        background-image: url(./images/bg.jpg);
        background-repeat: no-repeat;
        background-size: 100% auto;
        margin-top: 10em;
    }
    .tb{

        background-color: rgb(255, 255, 255);
        padding: 10px;

        border-radius: 7px;
        box-shadow: 2px 2px 4px;

    }
    .bu {
    	 padding-left: 16px;
    	 padding-top: 6px;
    	display:inline-block;
        margin: 20px;
        background-color:#1e90ff ;
        width: 110px;
        border: none;

        color: white;
        line-height: 20px;

    }
        .bu1{
    	 padding-left: 8px;
    	 padding-top: 6px;
    	display:inline-block;
        margin: 0px;
        background-color:#1e90ff ;
        width: 115px;
        border: none;

        color: white;
        line-height: 20px;

    }

</style>
<script type="text/javascript">

  function registe(){

  window.open("register.jsp","_self");

  }

</script>

<body class="db">
    	<!-- banner -->
	<div class="banner">
		<div class="top-banner">
			<div class="container">

				<div class="top-banner-right">
					<ul>
						<li><a  href="register.jsp">新規登録</a></li>
						<li><a  href="login.jsp">ログイン</a></li>

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

								<li><a  href="event.jsp" onclick="menu3()">イベント</a></li>

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




	<h2 align="center"><font color=#ff6347>会員ログイン</font></h2>
	<form action="login.do" method="post">
	<table class="tb" align="center" border="1">

		<tr>
			<td><label for="user_name">ユーザーID</label></td>
			 <td><input type="text" name="user_name" id="user_name"
			  required oninvalid="setCustomValidity('ユーザーIDを入力してください') " oninput="setCustomValidity('') "/></td>
		</tr>
		<tr>
			<td><label for="password">パスワード</label></td>
			<td><input type="password" name="password" id="password"
			required oninvalid="setCustomValidity('パスワードを入力してください') " oninput="setCustomValidity('') "/></td>
		</tr>
		<tr>
			<td colspan="2">
                <input type="button" class="bu" name="register" value="新規登録" onclick=registe() />
                <input type="submit" class="bu" name="login" value="ログイン"  onclick="return validate()">

                </td>



		</tr>

	</table>

	</form>


	<!--
	<script type="text/javascript">

    function validate(){
    var word1 = document.getElementById("user_name").value;
    var word2= document.getElementById("password").value;


    if(word1 ==""){
    	window.alert("ユーザIDを入力してください");
    	return false;
    }
    if(word2 ==""){
    	window.alert("パスワードを入力してください");
    	return false;
    }

    }
    </script>

	-->
</body>
</html>
