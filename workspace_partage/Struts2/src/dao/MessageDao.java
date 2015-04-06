/**
 * 
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Disponibilite;
import bean.Eleve;
import bean.Message;
import bean.Professeur;
import bean.Statut;

/**
 * @author Jeremy
 *
 */
public class MessageDao {

	
	public void message(Message message) {
		
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("INSERT INTO Message(email_envoy, email_dest, mess, date) VALUES (?,?,?,now())");  
		   ps.setString(1,message.getEmail_envoy());
		   ps.setString(2,message.getEmail_dest());
		   ps.setString(3,message.getText());
		   
		  
		   ps.executeUpdate();  	
		  
		  }catch(Exception e){
			  
			  e.printStackTrace();
			  
		  } 
		  }
		 
	public List<String> messageselect(Message message) {
		
		List<String> list = new ArrayList<String>();
		
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("SELECT mess, email_envoy, prenom,date FROM message LEFT JOIN utilisateur ON utilisateur.email=message.email_envoy WHERE (email_envoy=? OR email_envoy=?) AND (email_dest=? OR email_dest=?) order by date ASC");  
		   ps.setString(1,message.getEmail_envoy());
		   ps.setString(2,message.getEmail_dest());
		   ps.setString(3,message.getEmail_envoy());
		   ps.setString(4,message.getEmail_dest());
		   
		   ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString("mess"));
				list.add(rs.getString("email_envoy"));
				list.add(rs.getString("prenom"));
				list.add(rs.getString("date"));
			} 	
		  
		  }catch(Exception e){
			  
			  e.printStackTrace();
			  
		  } 
		  return list;
		  }

	
	public int nvxmess(String Email_envoy) {
		int i=0;
		
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("SELECT COUNT(lu) FROM message WHERE email_dest=? AND lu=0");  
		   ps.setString(1,Email_envoy);
		   
		   ResultSet rs = ps.executeQuery();
			 rs.next();
			//while (rs.next()) {
				i=rs.getInt(1);
		  
				System.out.println("i=" + i);
		  
		  }catch(Exception e){
			  
			  e.printStackTrace();
			  
		  } 
		  return i;
		  }
	
	
}
