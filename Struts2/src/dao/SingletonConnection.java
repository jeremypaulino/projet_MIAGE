package dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author Mathieu
 * 
 */
public class SingletonConnection {
	  
	  private static String url = "jdbc:mysql://localhost/ischooltest";
	  private static String user = "root";
	  private static String passwd = "";
	  
	  
	  private static Connection connect;
	   
	  public static Connection getConnection(){
	    if(connect == null){
	      try {
	    	  Class.forName("com.mysql.jdbc.Driver");
	    	  connect = DriverManager.getConnection(url, user, passwd);
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
	    }      
	    return connect;
	  } 
}
