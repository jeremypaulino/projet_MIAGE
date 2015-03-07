package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	public static String validate(String username,String userpass){  
		 String type="";  
		 
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select * from gettype where email = ? and mdp = ?");  
		   ps.setString(1,username);  
		   ps.setString(2,userpass);
		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {
				type = rs.getString("type");
			}
		  }catch(Exception e){e.printStackTrace();}  
		 return type;  
		} 
}
