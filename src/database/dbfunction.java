package database;

import java.sql.*;

public class dbfunction {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
    public void connect(){
	    String url = "jdbc:mysql://localhost:3306/StuInfo"; 
	    
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    } catch (ClassNotFoundException e) {
	    	// TODO Auto-generated catch block
	    	System.out.println("驱动错误");
	    	e.printStackTrace();
	    }
	    
	    try {
	    	con= DriverManager.getConnection("jdbc:mysql://localhost:3306/StuInfo?user=root&password=xiaohua521&useUnicode=true&characterEncoding=UTF-8");
	    } catch (SQLException e) {
	    	// TODO Auto-generated catch block
	    	e.printStackTrace();
	    }
	}
    
    public ResultSet select(String query){
	    System.out.println(query);
	    try {
	    	st = con.createStatement();
	    	System.out.println("st");
	    	rs = st.executeQuery(query);
	    	System.out.println("rs");
	    }catch (SQLException e) {
	    	// TODO Auto-generated catch block
	    	e.printStackTrace();
	    	System.out.println("查询错误");
	    }
	    return rs;
	}
    
	public void update(String upstr){
	    System.out.println(upstr);
	    try {
	    	st = con.createStatement();
	    	int rs = st.executeUpdate(upstr);
	    } catch (SQLException e) {
	    	// TODO Auto-generated catch block
	    	e.printStackTrace();
	    }
	}
	
	public void close(){
	    try {
	    	st.close();
	    	con.close();
	    } catch (SQLException e) {
	    	// TODO Auto-generated catch block
	    	e.printStackTrace();
	    	System.out.println("关闭错误");
	    }
	}
}
