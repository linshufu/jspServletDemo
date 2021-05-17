package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.zsx.utils.DBHelper;
/* dao层处理业务逻辑，里面有两个方法，
  一个是检查登录，一个是向数据库注册一个用户*/
public class DAO {


	public static Connection con = null;
	public static PreparedStatement ps = null;
	public static ResultSet rs = null;

	public static boolean checkLogin(String username, String password) {//检查登录，这里传入的两个参数分别是从jsp传过来的账号和密码
		con = DBHelper.getConnection();//通过DBHelper得到Connection
		String sql = "select * from user where user_name = ?";//查询语句，先把username设置为？，后面在赋值
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, username);//赋值
			rs = ps.executeQuery();//执行查询语句，返回一个ResultSet,这个就是我们数据库里面的user
			if (rs.next()) {

				String pwd = rs.getString("password");//找到数据类里面user所对应的passwrod
				if (pwd.equals(password)) {//把我们从数据库中找出来的password和从jsp中传过来的passwrod比较
					return true; //ture代表验证成功
				}else{
					return false;//false代表验证失败
				}
			}else{
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {     //这里是一些操作数据库之后的一些关闭操作
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				rs = null;
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				ps = null;
			}
		}
		return false;
	}
	public static void registe(String username,String password,String sex,String age,String address,String mail){//向数据库注册一个新的用户
		con=DBHelper.getConnection();//通过DBHelper得到Connection
		String sql="insert into user (user_name,password,sex,age,address,mail)"+ "values(?,?,?,?,?,?)";;//这个语句是向表单插入一个user,username和password先设置为？,后面赋值
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, username);//给username赋值
			ps.setString(2, password);//给password赋值
			ps.setString(3, sex);//给sex赋值
			ps.setString(4, age);//给age赋值
			ps.setString(5, address);//给address赋值
			ps.setString(6, mail);//给mail赋值
			int b=ps.executeUpdate();//执行插入语句，并返回一个int值，大于0表示添加成功，小于0表示添加失败.
			if(b>0){
				System.out.println("数据添加成功");
			}else{
				System.out.println("数据添加失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {   //这里是一些操作数据库之后的一些关闭操作
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				rs = null;
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				ps = null;
			}
		}
	}
}