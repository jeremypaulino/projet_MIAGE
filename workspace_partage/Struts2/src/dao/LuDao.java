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
import bean.Professeur;
import bean.Statut;

/**
 * @author Jeremy
 *
 */
public class LuDao {

	
	public void IndiqueLu(String email_dest, String email_envoy) {
		
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("UPDATE message SET lu=1 WHERE email_dest=? AND email_envoy=?");  
		 
		   ps.setString(1,email_dest);
		   ps.setString(2, email_envoy);
		   
		  
		   ps.executeUpdate();  	
		  
		  }catch(Exception e){
			  
			  e.printStackTrace();
			  
		  } 
		  }
	
	

}
