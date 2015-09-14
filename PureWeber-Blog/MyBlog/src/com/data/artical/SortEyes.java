package com.data.artical;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;



public class SortEyes {
	private static String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String DB_URI="jdbc:sqlserver://127.0.0.1:1433;database=blog";
	private static String DB_USER="sa";
	private static String DB_PWD="sa123";
	
	public static String name[] = new String[6];
	private int i =0;
	
	static {try {
		Class.forName(DRIVER);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}}
	
	/*
	 * 数据库的连接以及数据的打印
	 */
	public SortEyes() {

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
		    conn = DriverManager.getConnection(DB_URI,DB_USER,DB_PWD);
		    stmt=conn.createStatement();
		    rs=stmt.executeQuery("SELECT TOP 6 * FROM article ORDER by eyes DESC");
//		    遍历将数据库内容打印到表格
		    while(rs.next()){
		    	name[i]=rs.getString(2);
		    	i++;
		    }
		} catch (Exception e) {
			e.printStackTrace();
//			数据库的关闭
		}finally{
			try{
				if(conn!=null)
					conn.close();
				if(stmt!=null)
					stmt.close();
				if(rs!=null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
}

