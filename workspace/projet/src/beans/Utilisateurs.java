/**
 * 
 */
package beans;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import metier.SingletonConnection;

/**
 * @author Zosta
 *
 */
public abstract class Utilisateurs {
	
	private String mail;  
	private String mdp;
	private String pseudo;
	private String nom;
	private String prenom;
	private Date date_inscription;
	
	  
	  
	 
	/**
	 * @param mail the mail to set
	 */
	public void setMail(String mail) {
		this.mail = mail;
	}




	/**
	 * @param mdp the mdp to set
	 */
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}




	/**
	 * @param pseudo the pseudo to set
	 */
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	/**
	 * @param mail
	 * @param mdp
	 * @param pseudo
	 * @param nom
	 * @param prenom
	 */
	public Utilisateurs(String mail, String mdp, String pseudo, String nom,String prenom)throws Exception {
		
		this.mail = mail;
		this.mdp = mdp;
		this.pseudo = pseudo;
		this.nom = nom;
		this.prenom = prenom;
		this.date_inscription = new Date();
	}



	public void enregistrerBDD() {
		String query = "INSERT INTO `utilisateur`(mail,mdp) VALUES('"+mail+"','"+mdp+"')";
		Connection conn = SingletonConnection.getConnection();
		Statement statement;
		try {
			statement = conn.createStatement();
			statement.executeUpdate(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}


}
