<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規会員登録</title>
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
        line-height: 1.5;
        background-color: white;
        padding: 10px;
        border-radius: 7px;
        box-shadow: 2px 2px 4px;
    }
    .bu {
    	 padding-left: 6px;
    	 padding-top: 6px;
    	display:inline-block;
        margin: 0px;
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
        margin: 10px;
        margin-left: 40px;
        background-color:#1e90ff ;
        width: 115px;
        border: none;

        color: white;
        line-height: 20px;

    }

</style>
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


	<h2 align="center"><font color=#ff6347>新規会員登録</font></h2>
	<form action="registe.do" method="post">
		<table class="tb" align="center">
			<tr align="right">
		 		<td>ユーザーID:</td>
				<td><input type="text" name="user_name" id="user_name" placeholder="例）abc123"
				 required oninvalid="setCustomValidity('ユーザーIDを入力してください') " oninput="setCustomValidity('') "autofocus="autofocus"></td>
			</tr>
			<tr align="right">
				<td>パスワード:</td>
				<td><input type="password" name="password" id="password" placeholder="パスワードを入力"
				 required oninvalid="setCustomValidity('パスワードを入力してください') " oninput="setCustomValidity('') "/></td>
			</tr>
			<tr align="right">
				<td>パスワード:</td>
				<td><input type="password" name="repassword" id="repassword" placeholder="確認用パスワードを入力"
				 required oninvalid="setCustomValidity('確認用パスワードを入力してください') " oninput="setCustomValidity('') " ></td>
			</tr>
			<tr >
				<td align="right">性別:</td>
				<td><input type="radio" name="sex" id="sex"  value="男">男
				<input type="radio" name="sex" id="sex"  value="女">女</td>
			</tr>
			<tr align="right">
				<td >年齢:</td>
				<td><input type="text" name="age" id="age"  placeholder="例）18"
				 required oninvalid="setCustomValidity('年齢を入力してください') " oninput="setCustomValidity('') "></td>
			</tr>
			<tr align="right">
				<td >住所:</td>
				<td><input type="text" name="address" id="address" placeholder="例）東京都板橋区1-1-1"></td>
			</tr>
			<tr align="right">
				<td>メールアドレス:</td>
				<td><input type="email" name="mail" id="mail" placeholder="例）123456@qq.com"></td>
			</tr>



		<tr>
			<td colspan="2">
                <input type="reset" class="bu1" name="refill" value="リセット" >
			<input id="sub" type="submit" class="bu" name="register" value="新規登録"  onclick="return validate()">


			</td>


		</tr>
		</table>
		</form>




  <script type="text/javascript">

    function validate(){

    var word1= document.getElementById("password").value;
    var word2 = document.getElementById("repassword").value;

    if(word1 != word2){
      window.alert("パスワードは不一致です");
      repassword.focus();
      return false;
    }
    return true;
    }

    </script>


</body>
</html>
