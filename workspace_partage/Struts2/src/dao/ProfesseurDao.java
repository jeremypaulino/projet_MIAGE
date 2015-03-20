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
import bean.Matiere;

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
	
	
	// METHODE DE TEST recherche prof avec tout les filtres
	// requete imbriqué pour parcourir les listes
	public List<Professeur> getLiProf2(String term,List<Statut> listeStatut,List<Matiere> listeMatiere) {
		List<Professeur> listeProf = new ArrayList<Professeur>();

		List<String>liWhere = new ArrayList<String>();
		
		  try{
			  
			 if(term.length()>0){
				 liWhere.add("WHERE professeur.email LIKE '%"+term+"%'");
			 }
			 if(listeStatut.size()>0){
				 
				 for(int i=0; i< listeStatut.size(); i++){
					 if(i == 0){
						 liWhere.add("WHERE professeur.statut = '"+listeStatut.get(i)+"'");
					 }
					 else{
						 liWhere.add("OR professeur.statut = '"+listeStatut.get(i)+"'");
					 }
					 
				 }

			 }
			 if(listeMatiere.size()>0){

				 for(int i=0; i< listeMatiere.size(); i++)
				    {
					 if(i == 0){
						 if(listeMatiere.get(i).getNom().length()>0){
							 liWhere.add("WHERE matiereprof.nom = '"+listeMatiere.get(i).getNom()+"'");
						 }
					 }
					 else {
						 liWhere.add("OR matiereprof.nom = '"+listeMatiere.get(i).getNom()+"'");
					 }
				    }		 
				 
			 }
			 
			 String conditions="";
			 String conditions2="";
			 
			 for(int i=0; i< liWhere.size(); i++){
				 
				 
					 
					 	conditions = conditions + liWhere.get(i)+" ";
					 	
					 	if(i+1<liWhere.size()){
					 	
						 	if((liWhere.get(i).contains("WHERE") && liWhere.get(i+1).contains("WHERE"))||(liWhere.get(i).contains("OR") && liWhere.get(i+1).contains("WHERE"))){
						 		conditions2 = conditions2 + liWhere.get(i)+" AND ";
						 		 String str =  liWhere.get(i+1).replace("WHERE","" );
						 		 
						 		 liWhere.set(i+1, str);
						 		
						 	}
						 	else{
						 	
						 		conditions2 = conditions2 + liWhere.get(i)+" ";
						 	}
					 	}
					 	else{
					 		conditions2 = conditions2 + liWhere.get(i) +" ";
					 	}
 
			 }
			 
			 String bah =conditions2;
			 

		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement(
				   "SELECT professeur.statut,professeur.email,date_creation,cv,motivation,matiereprof.nom AS matiere,utilisateur.nom,prenom "
		   		+ "FROM professeur "
		   		+ "LEFT JOIN utilisateur ON professeur.email = utilisateur.email "
		   		+ "JOIN matiereprof ON professeur.idProf = matiereprof.idProf "
				   +conditions2 + " GROUP BY utilisateur.nom");  
			
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
	 * @param email
	 */
	public void refuserProf(String email) {
		try{  	     
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("UPDATE professeur SET statut ='REFUSE'  WHERE email = ?");  
			   ps.setString(1,email);
			   ps.executeUpdate();
			   
			  }catch(Exception e){e.printStackTrace();} 
		
	}
	
	/**
	 * @param email
	 */
	public void accepterProf(String email) {
		try{  	     
			   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("UPDATE professeur SET statut ='ACCEPTE'  WHERE email = ?");  
			   ps.setString(1,email);
			   ps.executeUpdate();
			   
			  }catch(Exception e){e.printStackTrace();} 
		
	}

	/**
	 * @param id
	 * @return
	 */
	public Professeur getProfById(int id) {
		Professeur prof = new Professeur(null, null, null, null, null, null, null, id, null, null, null, null, null, null);
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select professeur.statut,professeur.email,date_creation,cv,motivation,nom,prenom from professeur LEFT JOIN utilisateur ON professeur.email=utilisateur.email WHERE idProf = ? ORDER BY date_creation DESC");  
		   ps.setInt(1, id);
		   ResultSet rs=ps.executeQuery();  
		   rs.next();
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
		   prof = new Professeur(rs.getString("email"), null, null, rs.getString("nom"), rs.getString("prenom"), null, null, 0, null, null, null,rs.getString("cv"),rs.getString("motivation"),statut);

		  }catch(Exception e){e.printStackTrace();} 
		  
		 return prof;
	}
}
