/**
 * 
 */
package dao;

import java.sql.PreparedStatement;

import bean.Eleve;

/**
 * @author Mathieu
 *
 */
public class EleveDao {

	/**
	 * Inscrire un nouvel eleve
	 * @param eleve
	 */
	public void inscrireEleve(Eleve eleve) {

		 //insertion dans table utilisateur
		  try{  	     
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("INSERT INTO utilisateur(email,date_creation, pseudo, nom, prenom, credit, mdp,adresse,complementadresse,codepostale,ville,etat,pays) VALUES (?,now(),?,?,?,?,?,?,?,?,?,?,?)");  
			   ps.setString(1,eleve.getMail());
			   ps.setString(2,eleve.getPseudo());
			   ps.setString(3,eleve.getNom());
			   ps.setString(4,eleve.getPrenom());
			   ps.setInt(5, 0);
			   ps.setString(6,eleve.getMdp());
			   ps.setString(7,eleve.getAdresse());
			   ps.setString(8,eleve.getComplementAdresse());
			   ps.setInt(9,eleve.getCodepostale());
			   ps.setString(10,eleve.getVille());
			   ps.setString(11,eleve.getEtat());
			   ps.setString(12,eleve.getPays());
			   ps.executeUpdate();  
			  }
		  catch(Exception e){
			  e.printStackTrace();
			  }
		  
		  // table eleve
		try {
			PreparedStatement ps = SingletonConnection.getConnection().prepareStatement("INSERT INTO eleve(email,niveau,statutEleve) VALUES (?,?,?)");
			ps.setString(1, eleve.getMail());
			ps.setString(2, eleve.getNiveau());
			ps.setString(3, "ACCEPTE");
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
