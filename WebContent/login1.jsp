<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->


<script type="text/javascript">

  function registe(){

  window.open("registe.jsp","_self");

  }

</script>



</head>

<body>

<form action="login.do" method="post">

  <table  border="1">

  <tr>

  <td><label for="user_name">用户：</label></td>

  <td><input type="text" name="user_name" id="user_name"/></td>

  </tr>

   <tr>

  <td><label for="password">密码：</label></td>

  <td><input type="password" name="password" id="password"/></td>

  </tr>

  <tr>

  <td colspan="2" align="center">

   <input type="submit" value="登录"/>

   <input type="button" value="注册" onclick=registe() />

  </td>

  </tr>

  </table>

  </form>



</body>

</html>