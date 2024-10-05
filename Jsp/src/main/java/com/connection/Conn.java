package com.connection;
import java.sql.Connection;
import java.sql.DriverManager;

public class Conn{
	public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	public static Connection con;
	public static final String URL="jdbc:mysql://localhost:3306/";
	public static final String USERNAME="root";
	public static final String PASSWORD="root";
	public static final String DATABASE="ducat1";
	
	public static Connection getCon()
	{
		try {
			Class.forName(DRIVER);
			con=DriverManager.getConnection(URL+DATABASE,USERNAME,PASSWORD);
			System.out.println("Connect created");
		}
		catch(Exception e) {
			//TODO: handle exception
			e.printStackTrace();
			return null;
		}
		return con;
	}
	
	
}