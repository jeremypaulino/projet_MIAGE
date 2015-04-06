/**
 * 
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Cours;
import bean.Eleve;
import bean.Matiere;
import bean.Paiement;
import bean.Professeur;
import bean.Statut;
import bean.TypePaiement;

/**
 * @author Mathieu
 *
 */
public class AdministrateurDao {
	

	public List<String> getLiAdmin(){  
		
		 List<String> listeAdmin = new ArrayList<String>();
		 
		 
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select * from administrateur order by id ASC");  
		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {
			   listeAdmin.add(rs.getString("email"));
			}
		  }catch(Exception e){e.printStackTrace();}  
		 return listeAdmin;  
		}

	/**
	 * @param email
	 */
	public void addAdmin(String email) {		
		
		 //insertion dans table utilisateur
		  try{  	     
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("INSERT INTO utilisateur(email,date_creation, pseudo, nom, prenom, credit, mdp) VALUES (?,now(),?,?,?,?,?)");  
			   ps.setString(1,email);
			   ps.setString(2,"admin");
			   ps.setString(3,"admin");
			   ps.setString(4,"admin");
			   ps.setInt(5, 0);
			   ps.setString(6,"mdp");
			   ps.executeUpdate();  
			  }
		  catch(Exception e){
			  e.printStackTrace();
			  }
		 // insertion dans table admin
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("INSERT INTO administrateur(email) values(?)");  
		   ps.setString(1,email);  
		   ps.executeUpdate();
		  }
		  catch(Exception e){
			  e.printStackTrace();
			  }  
		  
		  
		
	}

	/**
	 * @param email
	 */
	public void supprAdmin(String email) {
		System.out.println("Admin bien supprimer");
		try{  	     
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("DELETE FROM utilisateur WHERE email=?");  
			   ps.setString(1,email);  
			   ps.executeUpdate();
			  }
			  catch(Exception e){
				  e.printStackTrace();
				  } 
	}

	/**
	 * @return
	 */
	public List<Eleve> getLiEleves() {		 
		List<Eleve> listeEleves = new ArrayList<Eleve>();
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select eleve.email,date_creation,nom,prenom,niveau from eleve LEFT JOIN utilisateur ON eleve.email=utilisateur.email ORDER BY date_creation DESC");  
		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {
			   Eleve nouveau = new Eleve(rs.getString("email"), null, null, rs.getString("nom"), rs.getString("prenom"), null, null, 0, null, null, null,rs.getString("niveau"));
			   listeEleves.add(nouveau);
			}
		  }catch(Exception e){e.printStackTrace();} 
		  
		 return listeEleves;
	}





	/**
	 * @return
	 */
	public List<Paiement> getLiChequesEnAttente() {
		List<Paiement> listeCheques = new ArrayList<Paiement>();
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select paiement.id ,paiement.date_creation ,utilisateur.nom ,utilisateur.prenom ,montant,paiement.statut AS statut ,typePaiement FROM paiement LEFT JOIN eleve ON paiement.ideleve=eleve.ideleve LEFT JOIN utilisateur ON eleve.email = utilisateur.email WHERE typePaiement = 'CHEQUE' AND paiement.statut = 'ATTENTE' ORDER BY paiement.date_creation DESC");  
		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {
			   TypePaiement typePaiement = null;
			   Statut statut = null;

			   if(rs.getString("typePaiement").equals("CHEQUE")){
				   typePaiement = TypePaiement.CHEQUE;
			   }
			   else if(rs.getString("typePaiement").equals("PAYPAL")){
				   typePaiement = TypePaiement.PAYPAL;
			   }
			   
			   if(rs.getString("statut").equals("ATTENTE")){
				   statut = Statut.ATTENTE;
			   }
			   else if(rs.getString("statut").equals("ACCEPTE")){
				   statut = Statut.ACCEPTE;
			   }
			   else if(rs.getString("statut").equals("REFUSE")){
				   statut = Statut.REFUSE;
			   }
			   
			Paiement nouveau = new Paiement(rs.getInt("paiement.id"),rs.getTimestamp("paiement.date_creation"), rs.getString("nom"), rs.getString("prenom"), rs.getString("montant"),typePaiement,statut);
			   listeCheques.add(nouveau);
			}
		  }catch(Exception e){e.printStackTrace();} 
		  
		 return listeCheques;
	}


	/**
	 * @return
	 */
	public List<String> getLiPrix() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @param id du cheque a accepté
	 */
	public void accepterCheque(int id) {
		  try{  	     
			  int i;
			  int ideleve;
			  
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("UPDATE paiement SET statut='ACCEPTE' WHERE id = ? ");  
			   ps.setInt(1,id);  
			   ps.executeUpdate();
			   
			   PreparedStatement ps1= SingletonConnection.getConnection().prepareStatement("SELECT ideleve FROM paiement WHERE id=?"); 
			   ps1.setInt(1,id);
			   ResultSet rs1=ps1.executeQuery();
			   rs1.next();
			   ideleve=rs1.getInt(1);;
			   
			   PreparedStatement ps2= SingletonConnection.getConnection().prepareStatement("SELECT (montant + credit) AS credit FROM utilisateur JOIN eleve ON eleve.email=utilisateur.email JOIN paiement ON eleve.ideleve=paiement.ideleve  WHERE eleve.ideleve=?");  
			   ps2.setInt(1,ideleve);
			   ResultSet rs=ps2.executeQuery();
			   
			   rs.next();
				
				i=rs.getInt(1);
				System.out.println(i);
				
				 PreparedStatement ps3= SingletonConnection.getConnection().prepareStatement("UPDATE utilisateur JOIN eleve ON utilisateur.email=eleve.email SET utilisateur.credit=? WHERE ideleve=?");  
				 ps3.setInt(1,i);
				 ps3.setInt(2,ideleve);
				   ps3.executeUpdate();
			   
			 
			  }
			  catch(Exception e){
				  e.printStackTrace();
				  
				  } 
		
	}

	/**
	 * @param id du cheque a refusé
	 */
	public void refuserCheque(int id) {
		try{  	     
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("UPDATE paiement SET statut='REFUSE' WHERE id = ? ");  
			   ps.setInt(1,id);  
			   ps.executeUpdate();
			  }
			  catch(Exception e){
				  e.printStackTrace();
				  } 
		
	}




}
