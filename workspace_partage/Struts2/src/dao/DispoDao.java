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
public class DispoDao {

	
	public void disponibilite(Disponibilite disponibilite) {
		
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("INSERT INTO disponibilite(idProf, crenaux, date) VALUES (?,?,?)");  
		   ps.setLong(1,disponibilite.getIdProf());
		   ps.setLong(2,disponibilite.getCreneaux());
		   ps.setString(3,disponibilite.getDate());
		   
		  
		   ps.executeUpdate();  	
		  
		  }catch(Exception e){
			  
			  e.printStackTrace();
			  
		  } 
		  }
		 
	public void disponibilite2(Disponibilite disponibilite) {
		
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("DELETE FROM disponibilite WHERE idProf=? AND crenaux=? AND date=?");  
		   ps.setLong(1,disponibilite.getIdProf());
		   ps.setLong(2,disponibilite.getCreneaux());
		   ps.setString(3,disponibilite.getDate());
		   
		   
		   ps.executeUpdate();  	
		  
		  }catch(Exception e){
			  
			  e.printStackTrace();
			  
		  } 
		  }
	
	public List<Integer> disponibilite3(Disponibilite disponibilite) {
	
	
		List<Integer> list = new ArrayList<Integer>();
		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement(
							"SELECT crenaux FROM disponibilite WHERE idProf=? AND date=?");
			ps.setLong(1, disponibilite.getIdProf());
			ps.setString(2, disponibilite.getDate());

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getInt("crenaux"));
			}
			
			
			 System.out.println("test");
		} catch (Exception e) {

			e.printStackTrace();

		}
		return list;
	}

}
