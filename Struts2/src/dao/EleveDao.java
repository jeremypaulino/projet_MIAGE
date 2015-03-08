/**
 * 
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Eleve;
import bean.Professeur;
import bean.Statut;

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

	/**
	 * @param term
	 * @return
	 */
	public List<Eleve> getLiEleve(String term) {
		List<Eleve> listeEleve = new ArrayList<Eleve>();
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select eleve.niveau,utilisateur.pseudo,eleve.statutEleve,eleve.email,date_creation,nom,prenom from eleve LEFT JOIN utilisateur ON eleve.email=utilisateur.email WHERE eleve.email LIKE ? ORDER BY date_creation DESC");  
			ps.setString(1, "%"+term + "%");

		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {

			   Eleve nouveau = new Eleve(rs.getString("email"), "", rs.getString("pseudo"), rs.getString("nom"), rs.getString("prenom"), "", "", 0, "", "", "", rs.getString("niveau"));
			   listeEleve.add(nouveau);
			}
		  }catch(Exception e){e.printStackTrace();} 
		  
		 return listeEleve;
	}

}
