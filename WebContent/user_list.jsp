<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<%=path%>/resource/bs/js/jquery-1.11.1.js"></script>	<!-- 引入jquery -->
<link rel="stylesheet" href="<%=path%>/resource/bs/css/bootstrap.css"> <!-- 引入bootstrap.css -->
<script src="<%=path%>/resource/bs/js/bootstrap.min.js"></script><!-- 引入bootstrap.min.js -->
<title>ユーザリスト</title>
</head>
<body>
	<section class="container">
		<div class="row">
			<div class="col-md-3">
				<button class="btn btn-danger" data-toggle="modal"
					data-target="#addModal">追加</button>
			</div>


		</div>

		<table class="table table-striped table-bordered table-hover">
			<th>ID</th>
			<th>ユーザ名</th>
			<th>パスワード</th>
			<th>性別</th>
			<th>年齢</th>
			<th>住所</th>
			<th>メールアドレス</th>
			<th>操作</th>
			<c:forEach items="${ userList }" var="list">
				<tr>
					<td>${list.id }</td>
					<td>${list.userName }</td>
					<td>${list.passwrod }</td>
					<td>${list.sex }</td>
					<td>${list.age }</td>
					<td>${list.address }</td>
					<td>${list.mail }</td>
					<td colspan="2"><button class="btn btn-primary edBtn"
							data-toggle="modal" data-target="#edModal" value="${list.id }" n="${ list.userName}" p="${list.passwrod }"
							s="${list.sex }" a="${list.age}" ad="${list.address}" m="${list.mail}">編集</button>
						<button class="btn btn-danger delBtn" data-toggle="modal"
							data-target=".delModal" value="${list.id }">削除</button></td>
				</tr>
			</c:forEach>
		</table>
	<div class="row">
			<div class="col-md-3">
				<button class="btn btn-danger" data-toggle="modal"
					data-target=""><a href="index.jsp"><font color="white">ホームに戻る</font></a></button>
			</div>


		</div>
	</section>
</body>

<div class="modal fade delModal" tabindex="-1" role="dialog"
	aria-labelledby="gridSystemModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">提示メッセージ</h4>
			</div>
			<div class="modal-body">
				<h4>削除します、よろしいですか？</h4>
			</div>
			<div class="modal-footer">
				<form action="DelServlet">
					<input id="delid" name="id" value="" hidden>
					<button type="button" class="btn btn-primary" data-dismiss="modal">保留</button>
					<button type="submit" class="btn btn-danger">削除</button>
				</form>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 编辑模态框 -->
<div class="modal fade" id="edModal" tabindex="-1" role="dialog"
	aria-labelledby="edModal">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="exampleModalLabel">アカウント編集</h4>
			</div>
			<form action="UpdateServlet" method="post">
				<div class="modal-body">
					<input id="edId" name="id" value="" hidden>
					<div class="form-group">
						<label for="username" class="control-label">ユーザID:</label> <input
							type="text" name="user_name" class="form-control" id="username"
							value="${user.userName }" required>
					</div>
					<div class="form-group">
						<label for="password" class="control-label">パスワード:</label> <input
							type="password" name="password" class="form-control" id="password"
							value="${user.password }" required>
					</div>
					<div class="form-group">
						<label for="sex" class="control-label">性別:</label> <input
							type="text" name="sex" class="form-control" id="sex"
							value="${user.sex }" required>
					</div>
					<div class="form-group">
						<label for="age" class="control-label">年齢:</label> <input
							type="text" name="age" class="form-control" id="age"
							value="${user.age }" required>
					</div>
					<div class="form-group">
						<label for="address" class="control-label">住所:</label> <input
							type="text" name="address" class="form-control" id="address"
							value="${user.address }" required>
					</div>
					<div class="form-group">
						<label for="mail" class="control-label">メールアドレス:</label> <input
							type="email" name="mail" class="form-control" id="mail"
							value="${user.mail }" required>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="submit" class="btn btn-primary">更新</button>
				</div>
			</form>
		</div>
	</div>
</div>

<!-- 添加模态框 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog"
	aria-labelledby="edModal">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="exampleModalLabel">アカウント追加</h4>
			</div>
			<form action="addServlet" method="post">
				<div class="modal-body">
					<input id="edId" name="id" value="" hidden>
					<div class="form-group">
						<label for="username" class="control-label">ユーザID:</label> <input
							type="text" name="username" class="form-control" value="" placeholder="例）abc123"
							required oninvalid="setCustomValidity('ユーザIDを入力してください') " oninput="setCustomValidity('') "/>
					</div>
					<div class="form-group">
						<label for="password" class="control-label">パスワード:</label> <input
							type="password" name="password" class="form-control" value="" placeholder="例）a123456" required
							required oninvalid="setCustomValidity('パスワードを入力してください') " oninput="setCustomValidity('') "/>
					</div>
					<div class="form-group">
						<label for="sex" class="control-label">性別:</label>
						<input type="radio" name="sex" id="sex"  value="男" required  >男
						<input type="radio" name="sex" id="sex"  value="女" required >女

					</div>
					<div class="form-group">
						<label for="age" class="control-label">年齢:</label> <input
							type="text" name="age" class="form-control" value="" placeholder="例）18"
							required oninvalid="setCustomValidity('年齢を入力してください') " oninput="setCustomValidity('') "/>
					</div>
					<div class="form-group">
						<label for="address" class="control-label">住所:</label> <input
							type="text" name="address" class="form-control" value="" placeholder="例）東京都板橋区1-1-1">
					</div>
					<div class="form-group">
						<label for="mail" class="control-label">メールアドレス:</label> <input
							type="email" name="mail" class="form-control" value="" placeholder="例）123456@qq.com">
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="submit" class="btn btn-primary">追加</button>
				</div>
			</form>
		</div>
	</div>
</div>


<script type="text/javascript">
	// 删除按钮
	$(".delBtn").on("click", function() {
		$("#delid").val($(this).val());	// 获取当前点击按钮的值value值,并赋值给删除模态框的<input name="id"
	});
	// 编辑按钮
	$(".edBtn").on("click", function() {
		$("#edId").val($(this).val());	// 获取当前点击按钮的值value值,并赋值给编辑模态框的<input name="id"
		$("#username").val($(this).attr("n"));	//取按钮上的自定义属性值
		$("#password").val($(this).attr("p"));	//取按钮上的自定义属性值
		$("#sex").val($(this).attr("s"));	//取按钮上的自定义属性值
		$("#age").val($(this).attr("a"));	//取按钮上的自定义属性值
		$("#address").val($(this).attr("ad"));	//取按钮上的自定义属性值
		$("#mail").val($(this).attr("m"));	//取按钮上的自定义属性值
	});
</script>
</html>