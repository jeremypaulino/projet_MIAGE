/**
 * 
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Mathieu
 *
 */
public class MatiereDao {
	
	
	/**
	 * @param nom de la matiere
	 */
	public void addMatiere(String matiere) {
		
		
		 //insertion dans table utilisateur
		  try{  	     
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("INSERT INTO matiere(nom) VALUES (?)");  
			   ps.setString(1,matiere);
			   ps.executeUpdate();  
			  }
		  catch(Exception e){
			  e.printStackTrace();
			  }

	}
	
	/**
	 * @param matiere
	 */
	public void supprMatiere(String nom) {
		try{  	     
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("DELETE FROM matiere WHERE nom=?");  
			   ps.setString(1,nom);  
			   ps.executeUpdate();
			  }
			  catch(Exception e){
				  e.printStackTrace();
				  } 
		
	}
	
	/**
	 * @param string 
	 * @return liste des matieres
	 */
	public List<String> getLiMatieres(String filtre) {
		
		List<String> listeMatieres = new ArrayList<String>();
		 
		 
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select * from matiere WHERE nom LIKE ? order by nom ASC ");  
		   ps.setString(1, filtre+"%");
		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {
			   listeMatieres.add(rs.getString("nom"));
			}
		  }catch(Exception e){e.printStackTrace();} 
		  if(listeMatieres.size()<1){
			  listeMatieres.add("Aucune Matiere");
		  }
		 return listeMatieres;  
		
	}
}
