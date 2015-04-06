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
public class PaiementDao {

	
	public void insertPaiement(int montant,String typep,int idEleve ) {
		
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("INSERT INTO paiement(ideleve, date_creation,montant,statut, typePaiement) VALUES (?,now(),?,'ATTENTE',?)");  
		   ps.setLong(2,montant);
		   ps.setString(3,typep);
		   ps.setLong(1,idEleve);
		   
		  
		   ps.executeUpdate();  	
		  
		  }catch(Exception e){
			  
			  e.printStackTrace();
			  
		  } 
		  }
		 


}
