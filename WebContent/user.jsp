<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <%
  	 	String a = (String)request.getAttribute("user_name");
    String b = (String)request.getAttribute("password");
    String c = (String)request.getAttribute("id");
  	  %>
  	  <%
	String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


${ userList }
					id：<%=c%>
					账号：<%=a%>
					密码：<%=b%>
					性别：${list.id }
					年龄：${list.userName }
					地址：
					邮箱：

</body>
</html>