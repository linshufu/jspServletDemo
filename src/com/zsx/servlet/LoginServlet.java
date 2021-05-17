package com.zsx.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;

/*

登录界面是从登录界面获得username和password，再通过dao层中的checkLogin()来判断是否登录

 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	@Override

	//doGet方法自动跳转到doPost()方法
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}


	@Override

	//doGet方法判断从jsp传过来的username和password是否和数据库中的对应，如果对应，则跳转到欢迎界面，如果不对应，则返回登录界面
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		String username = req.getParameter("user_name");//从jsp中获取usernmae
		String password = req.getParameter("password");//从jsp中获取password
//		if(username=="") {
//			out.print("ユーザIDを入力してください");
//			//	  resp.getWriter().write("用户名不能为空！");
//			return;
//		}
//		if(password=="") {
//			out.print("パスワードを入力してください");
//			//	resp.getWriter().write("密码不能为空！");
//			return;
//		}

		if (DAO.checkLogin(username, password)) {      //dao层中判断，如果为true，跳转到欢迎界面
			HttpSession session = req.getSession(true);
			req.getSession().setAttribute("user_name", username);
			session.setMaxInactiveInterval(7200);//设置session最大生存时间2小时.
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		}else{                                        //如果为false，跳转到登录界面，并返回错误信息.
			//req.setAttribute("inf", "你的账号或密码错误，请重新登录");
			out.print("ユーザIDまたは、パスワードが正しくない！<br>");
			out.print("戻るボタンをクリックして、ログイン画面に戻ります<br>");
			out.print("<button><a href='login.jsp'>戻る</a></button>");
			//req.getRequestDispatcher("index.jsp").forward(req, resp);
		}


	}
}

