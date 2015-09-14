package com.data.artical;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Image {

	private static String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String DB_URI="jdbc:sqlserver://127.0.0.1:1433;database=blog";
	private static String DB_USER="sa";
	private static String DB_PWD="sa123";
	
	static {try {
		Class.forName(DRIVER);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}}
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
    public Image() throws ClassNotFoundException {
		try {
		    conn = DriverManager.getConnection(DB_URI,DB_USER,DB_PWD);
		} catch(SQLException e) {
            e.printStackTrace();
        }
    }
    public void Insert() {
        try {
        	stmt=conn.createStatement();
		    rs=stmt.executeQuery("insert into picture values(picture,111)");
            File f =new File("F:/Study/Ç°¶Ë/PureWeber/Blog/image/01.jpg");
            
           
            FileInputStream input= new FileInputStream(f);
            rs.updateString(1,"cute");
            rs.updateBinaryStream(2, input,(int)f.length());
            rs.close();
            input.close();
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        catch(IOException ie) {
            ie.printStackTrace();
        }
    }
   
    public void Read() {
        try {
        	stmt=conn.createStatement();
		    rs=stmt.executeQuery("select picture from picture where name=lol");
            rs.updateString(1, "cute");
            byte [] b=new byte[10240*8];
           
            while(rs.next()) {
                InputStream in=rs.getBinaryStream("picture");
                in.read(b);
                File f=new File("F:/3.jpg");
                FileOutputStream out=new FileOutputStream(f);
                out.write(b, 0, b.length);
                out.close();
            }
           
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        catch(IOException ie) {
            ie.printStackTrace();
        }
    }
   
    public static void main(String[] args) throws ClassNotFoundException {
        // TODO Auto-generated method stub
        Image p=new Image();
        p.Insert();
        p.Read();
    }

}
