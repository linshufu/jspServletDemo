package com.zsx.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*

注册是从注册界面得到username和password，再通过dao层中registe()来向数据库添加一条用户

 */

import dao.DAO;
@WebServlet("/registe.do")
public class RegisteServlet extends HttpServlet{
	@Override

	//doGet方法自动跳转到doPost()方法
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();

		String username=req.getParameter("user_name");//从注册界面获得username
		String password=req.getParameter("password");//从注册界面获得password
		String sex=req.getParameter("sex");//从注册界面获得password
		String age=req.getParameter("age");//从注册界面获得username
		String address=req.getParameter("address");//从注册界面获得password
		String mail=req.getParameter("mail");//从注册界面获得password




//		if(username=="") {
//			out.print("ユーザIDを入力してください");
//			//	  resp.getWriter().write("用户名不能为空！");
//			return;
//		}
//		if(password=="") {
//			out.print("パスワードを入力してください");
//			//		resp.getWriter().write("密码不能为空！");
//			return;
//		}




		DAO.registe(username, password,sex,age,address,mail);
		out.println("アカウント "+"<font color='red'>"+username+"</font>"+" 登録が完了しました!<br>");
		out.println("10秒後ログイン画面に戻ります<br>");
		out.println("反応がない場合は、こちらをクリックしてください"+"<button><a href='login.jsp'>"+"戻る"+"</button></a>");
		resp.setHeader("refresh","10;url=login.jsp");//5秒后重新跳转到登录界面
		//  req.getRequestDispatcher("login.jsp").forward(req, resp); //重新跳转到登录界面
	}
}

