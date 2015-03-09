/**
 * 
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Professeur;
import bean.Statut;

/**
 * @author Mathieu
 *
 */
public class VilleDao {

	/**
	 * @param term
	 * @return la liste des villes ayavnt ses codes postaux
	 */
	public List<String> getLiVille(String term) {
		List<String> listeVille = new ArrayList<String>();
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("SELECT CP, VILLE FROM cp_autocomplete WHERE CP LIKE ? AND CODEPAYS = 'FR'");  
		   ps.setString(1, "%"+term + "%");
		   ResultSet rs=ps.executeQuery();  
			
		   while (rs.next()) {
			   
			   String ville = rs.getString("VILLE");
			   listeVille.add(ville);
			}
		  }catch(Exception e){e.printStackTrace();} 
		  
		 return listeVille;
	}

}
