package com.zsx.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.utils.DBUtils;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/addServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 添加数据
	 *
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String address = request.getParameter("address");
		String mail = request.getParameter("mail");
		if (username != null && password != null) {
			Connection conn = DBUtils.open(); /// 获得数据库连接
			String sql = "insert into user(user_name, password, sex, "
					+ " age, address, mail ) values(?,?,?,?,?,?);";

			try {
				PreparedStatement prtmt = conn.prepareStatement(sql); // 预编译
				prtmt.setString(1, username); // 给第一个? 传值
				prtmt.setString(2, password); // 给第二个? 传值
				prtmt.setString(3, sex); // 给第三个? 传值
				prtmt.setString(4, age); // 给第si个? 传值
				prtmt.setString(5, address); // 给第wu个? 传值
				prtmt.setString(6, mail); // 给第六个? 传值
				int resInt = prtmt.executeUpdate(); // 如果添加成功返回影响数
				request.setAttribute("resInt", resInt);
				request.getRequestDispatcher("/findAllServlet").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				DBUtils.close(); // 关闭数据库连接
			}
		}
	}

}

