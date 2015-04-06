/**
 * 
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Contact;
import bean.Eleve;
import bean.Paiement;
import bean.Professeur;
import bean.Statut;
import bean.TypePaiement;
import bean.Utilisateur;

/**
 * @author Mathieu
 *
 */
public class ContactsDao {
	

	public List<String> getLiContact(Contact contact) {

		List<String> listeContact = new ArrayList<String>();

		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement(
							"select nom,prenom,email from contacts LEFT JOIN utilisateur ON utilisateur.email=contacts.email_dest WHERE email_sess = ? OR email_dest = ?");
			ps.setString(1, contact.getEmail_sess());
			ps.setString(2, contact.getEmail_sess());


			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				listeContact.add(rs.getString("nom"));
				listeContact.add(rs.getString("prenom"));
				listeContact.add(rs.getString("email"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listeContact;

	}
	
	
	
	public List<Utilisateur> getLiContact(String email) {


		List<Utilisateur> listeContact = new ArrayList<Utilisateur>();
		  try{  	     
		   PreparedStatement ps= SingletonConnection.getConnection().prepareStatement("select email_sess,email_dest,eleve.niveau,utilisateur.pseudo,eleve.statutEleve,eleve.email,date_creation,nom,prenom FROM contacts LEFT JOIN eleve ON contacts.email_dest = eleve.email LEFT JOIN utilisateur ON eleve.email = utilisateur.email WHERE contacts.email_sess  = ? OR contacts.email_dest = ?  ORDER BY date_creation DESC");  
			ps.setString(1, email);
			ps.setString(2, email);

		   ResultSet rs=ps.executeQuery();  
		   while (rs.next()) {

			   Eleve nouveau = new Eleve(rs.getString("email"), "", rs.getString("pseudo"), rs.getString("nom"), rs.getString("prenom"), "", "", 0, "", "", "", rs.getString("niveau"));
			   listeContact.add(nouveau);
			}
		  }catch(Exception e){e.printStackTrace();} 
		return listeContact;

	}
	

}
