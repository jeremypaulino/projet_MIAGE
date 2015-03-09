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
public class ProfesseurDao {
	

	/**
	 * @return la liste des prof en attente de validation
	 */
	public List<Professeur> getLiProfEnAttente() {		 
		List<Professeur> listeProf = new ArrayList<Professeur>();
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select professeur.statut,professeur.email,date_creation,cv,motivation,nom,prenom from professeur LEFT JOIN utilisateur ON professeur.email=utilisateur.email WHERE statut = 'ATTENTE' ORDER BY date_creation DESC");  
		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {
			   Statut statut = null;
			   if(rs.getString("statut").equals("ATTENTE")){
				   statut = Statut.ATTENTE;
			   }
			   else if(rs.getString("statut").equals("ACCEPTE")){
				   statut = Statut.ACCEPTE;
			   }
			   else if(rs.getString("statut").equals("REFUSE")){
				   statut = Statut.REFUSE;
			   }
			   Professeur nouveau = new Professeur(rs.getString("email"), null, null, rs.getString("nom"), rs.getString("prenom"), null, null, 0, null, null, null,rs.getString("cv"),rs.getString("motivation"),statut);
			   listeProf.add(nouveau);
			}
		  }catch(Exception e){e.printStackTrace();} 
		  
		 return listeProf;
	}

	/**
	 * @return
	 */
	public List<Professeur> getLiProf() {
		List<Professeur> listeProf = new ArrayList<Professeur>();
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select professeur.statut,professeur.email,date_creation,cv,motivation,nom,prenom from professeur LEFT JOIN utilisateur ON professeur.email=utilisateur.email ORDER BY date_creation DESC");  
		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {
			   Statut statut = null;
			   if(rs.getString("statut").equals("ATTENTE")){
				   statut = Statut.ATTENTE;
			   }
			   else if(rs.getString("statut").equals("ACCEPTE")){
				   statut = Statut.ACCEPTE;
			   }
			   else if(rs.getString("statut").equals("REFUSE")){
				   statut = Statut.REFUSE;
			   }
			   Professeur nouveau = new Professeur(rs.getString("email"), null, null, rs.getString("nom"), rs.getString("prenom"), null, null, 0, null, null, null,rs.getString("cv"),rs.getString("motivation"),statut);
			   listeProf.add(nouveau);
			}
		  }catch(Exception e){e.printStackTrace();} 
		  
		 return listeProf;
	}

	/**
	 * @param term la chaine recherché
	 * @return
	 */
	public List<Professeur> getLiProf(String term) {
		List<Professeur> listeProf = new ArrayList<Professeur>();
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select professeur.statut,professeur.email,date_creation,cv,motivation,nom,prenom from professeur LEFT JOIN utilisateur ON professeur.email=utilisateur.email WHERE professeur.email LIKE ? ORDER BY date_creation DESC");  
			ps.setString(1, "%"+term + "%");

		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {
			   Statut statut = null;
			   if(rs.getString("statut").equals("ATTENTE")){
				   statut = Statut.ATTENTE;
			   }
			   else if(rs.getString("statut").equals("ACCEPTE")){
				   statut = Statut.ACCEPTE;
			   }
			   else if(rs.getString("statut").equals("REFUSE")){
				   statut = Statut.REFUSE;
			   }
			   Professeur nouveau = new Professeur(rs.getString("email"), null, null, rs.getString("nom"), rs.getString("prenom"), null, null, 0, null, null, null,rs.getString("cv"),rs.getString("motivation"),statut);
			   listeProf.add(nouveau);
			}
		  }catch(Exception e){e.printStackTrace();} 
		  
		 return listeProf;
	}
}
