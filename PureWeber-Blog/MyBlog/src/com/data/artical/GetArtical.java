package com.data.artical;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;



public class GetArtical {
	private static String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String DB_URI="jdbc:sqlserver://127.0.0.1:1433;database=blog";
	private static String DB_USER="sa";
	private static String DB_PWD="sa123";
	
	private int typeId[] = new int[10000];
	private int i =0;
	
	static {try {
		Class.forName(DRIVER);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}}
	
	/*
	 * ���ݿ�������Լ����ݵĴ�ӡ
	 */
	public GetArtical() {

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
		    conn = DriverManager.getConnection(DB_URI,DB_USER,DB_PWD);
		    stmt=conn.createStatement();
		    rs=stmt.executeQuery("SELECT * FROM article");
//		    ���������ݿ����ݴ�ӡ�����
		    while(rs.next()){
		    	typeId[i]=rs.getInt(2);
		    	i++;
		    }
		} catch (Exception e) {
			e.printStackTrace();
//			���ݿ�Ĺر�
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

