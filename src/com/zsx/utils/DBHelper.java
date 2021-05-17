package com.zsx.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*这个类就是为得到Connection所服务的。

 *后面只需要调用静态方法getConnection()就能直接得到一个Connection了，

 */

public class DBHelper {

	//这个是添加的jar包里面的一个类。可以在referenced Libraries里面找到

	public static final String driver="com.mysql.cj.jdbc.Driver";



	public static final String url="jdbc:mysql://localhost:3306/jspdemo?useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8";

	public static final String username="root";

	public static final String password="123456";

	public static Connection con=null;

	static{

		try {

			Class.forName(driver);//得到DriverManager，在下面建立连接时使用

		} catch (ClassNotFoundException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

	}

	public static Connection getConnection(){

		if(con==null){

			try {

				con=DriverManager.getConnection(url,username,password);//建立连接,使用的参数就是上面我们所定义的字符串常量。

			} catch (SQLException e) {

				// TODO Auto-generated catch block

				e.printStackTrace();

			}

		}

		return con;

	}

	public static Connection close() {
		if (con != null) {
			try {
				con.close();// 关闭数据库
				System.out.println("关闭...");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("数据库关闭失败...");
			}
		}
		return null;
	}

}