package hashtag.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ConnectionClass {
	
	 int count;
	 Connection conn = null;
	 Statement stmt = null;
	
	public Connection createCon(){
	try
	{
		
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	String connectionUrl = "jdbc:mysql://localhost/campusconnect";
	String connectionUser = "root";
	String connectionPassword = "";
	conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
	
	}catch (Exception e) {
		e.printStackTrace();}
	
	return conn;
	}
	
	
	
	
	
	
}
