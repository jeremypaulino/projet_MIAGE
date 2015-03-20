/**
 * 
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Jeremy
 *
 */
public class EmailDao {
	
	
	
	
	/**
	 * @param string 
	 * @return liste des email
	 */
	public List<String> getLiEmail(String filtre) {
		
		List<String> listeEmail = new ArrayList<String>();
		 
		 
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select pseudo from utilisateur WHERE pseudo LIKE ? order by nom ASC");  
		   System.out.println(filtre);
		   ps.setString(1, filtre+"%");
		   ResultSet rs=ps.executeQuery();  
		   
		   while (rs.next()) {
			   listeEmail.add(rs.getString("nom"));
			}
		  }catch(Exception e){e.printStackTrace();} 
		  if(listeEmail.size()<1){
			  listeEmail.add("Aucun Destinataire");
		  }
		 return listeEmail;  
		
	}
}
