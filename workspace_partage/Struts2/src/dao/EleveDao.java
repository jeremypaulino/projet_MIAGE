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

	/**
	 * @param term
	 * @return
	 */
	public int getStatEleve(String term) {
		
		int result=0;
		if("total".equals(term)){
			try{ 
			PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("SELECT COUNT(*) AS total FROM eleve");  
			ResultSet rs=ps.executeQuery();
			rs.next();
			result = rs.getInt(1);
		   
			}catch(Exception e){e.printStackTrace();} 
		   
		}
		return result;
	}

	/**
	 * @param email
	 */
	public void supprEleve(String email) {
		
			try{ 
			PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("DELETE FROM utilisateur WHERE email = ?");  
			ps.setString(1, email);
			ps.executeUpdate();
			}catch(Exception e){e.printStackTrace();} 
		
	}

	/**
	 * @param id
	 * @return
	 */
	public Eleve getEleveByid(int id) {
		
		Eleve eleve = new Eleve(null, null, null, null, null, null, null, id, null, null, null, null);
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select eleve.idEleve,utilisateur.pseudo,eleve.statutEleve,eleve.email,utilisateur.date_creation,utilisateur.nom,utilisateur.prenom, eleve.niveau FROM eleve LEFT JOIN utilisateur ON eleve.email=utilisateur.email WHERE idEleve = ?  ORDER BY date_creation DESC");  
		   ps.setInt(1, id);
		   ResultSet rs=ps.executeQuery();  
		   rs.next();
		   Statut statut = null;
		   if(rs.getString("statutEleve").equals("ATTENTE")){
			   statut = Statut.ATTENTE;
		   }
		   else if(rs.getString("statutEleve").equals("ACCEPTE")){
			   statut = Statut.ACCEPTE;
		   }
		   else if(rs.getString("statutEleve").equals("REFUSE")){
			   statut = Statut.REFUSE;
		   }
		   eleve = new Eleve(rs.getString("email"), "", rs.getString("pseudo"), rs.getString("nom"), rs.getString("prenom"), "", "", 0, "", "", "", rs.getString("niveau"));

		  }catch(Exception e){e.printStackTrace();} 
		  
		 return eleve;
	}
	
	
	public String getNiveau(int id) {
		
		String niveau="";
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("SELECT niveau FROM eleve WHERE idEleve = ?");  
		   ps.setInt(1, id);
		   ResultSet rs=ps.executeQuery();  
		   rs.next();
		  
		   niveau = rs.getString("niveau");

		  }catch(Exception e){e.printStackTrace();} 
		  
		 return niveau;
	}

	/**
	 * @param id eleve
	 * @return credit de l'eleve en int
	 */
	public int getCreditEleve(int id)
	{
		int i=0;
		
		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement(
							"SELECT credit FROM utilisateur LEFT JOIN eleve ON utilisateur.email=eleve.email WHERE idEleve=?");
			ps.setLong(1, id);

			ResultSet rs = ps.executeQuery();
			 rs.next();
				i=rs.getInt(1);
			
		} catch (Exception e) {

			e.printStackTrace();

		}
		
		return i; 
	}

	/**
	 * @param i
	 * @param j 
	 */
	public void updateCreditEleve(String maileleve, int credit) {
		
		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement(
							"UPDATE utilisateur LEFT JOIN eleve ON utilisateur.email=eleve.email SET credit = ? WHERE utilisateur.email=?");
			ps.setInt(1, credit);
			ps.setString(2, maileleve);

			ps.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		}
				
	}

	/**
	 * @param idEleve
	 * @return
	 */
	public String getEmailById(int idEleve) {
		String email = "";
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("SELECT eleve.email,eleve.idEleve,nom,prenom FROM eleve LEFT JOIN utilisateur ON eleve.email=utilisateur.email WHERE idEleve = ? ");  
		   ps.setInt(1, idEleve);
		   ResultSet rs=ps.executeQuery();  
		   rs.next();
		   email = rs.getString("email");

		  }catch(Exception e){e.printStackTrace();} 
		  
		 return email;
	}
	
	
	
	
	public void ModifierEleve(Eleve eleve,String email) {
		
		try {
			PreparedStatement ps = SingletonConnection.getConnection().prepareStatement("UPDATE utilisateur SET email=? WHERE email=?");
			ps.setString(1, eleve.getMail());
			ps.setString(2, email);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		 //insertion dans table utilisateur
		  try{  	     
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("UPDATE utilisateur SET pseudo=?, nom=?, prenom=?, mdp=?,adresse=?,complementadresse=?,codepostale=?,ville=?,pays=? WHERE email=?");  
			  
			   ps.setString(1,eleve.getPseudo());
			   ps.setString(2,eleve.getNom());
			   ps.setString(3,eleve.getPrenom());
			   ps.setString(4,eleve.getMdp());
			   ps.setString(5,eleve.getAdresse());
			   ps.setString(6,eleve.getComplementAdresse());
			   ps.setInt(7,eleve.getCodepostale());
			   ps.setString(8,eleve.getVille());
			   ps.setString(9,eleve.getPays());
			   ps.setString(10,eleve.getMail());
			   ps.executeUpdate();  
			  }
		  catch(Exception e){
			  e.printStackTrace();
			  }
		  
		  // table eleve
		try {
			PreparedStatement ps = SingletonConnection.getConnection().prepareStatement("UPDATE eleve SET email=? WHERE email=?");
			ps.setString(1, eleve.getMail());
			ps.setString(2, email);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
public String getNomPrenomById(int idEleve) {
		
		String nomprenom = "";
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select eleve.email,nom,prenom FROM eleve LEFT JOIN utilisateur ON eleve.email=utilisateur.email WHERE idEleve = ? ");  
		   ps.setInt(1, idEleve);
		   ResultSet rs=ps.executeQuery();  
		   rs.next();
		   nomprenom = rs.getString("prenom")+" "+rs.getString("nom");

		  }catch(Exception e){e.printStackTrace();} 
		  
		 return nomprenom;
	}
	
}
