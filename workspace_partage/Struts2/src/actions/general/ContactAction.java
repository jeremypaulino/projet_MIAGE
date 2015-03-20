package actions.general;

import java.util.List;

import bean.Contact;


import com.opensymphony.xwork2.ActionSupport;
import dao.ContactsDao;


public class ContactAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<String> listeContact;
	private String email;

	public String execute() {
		try {
		Contact contact = new Contact(null, null);
		System.out.println("parametres passe en ajax : - " + email);
		ContactsDao dao = new ContactsDao();

		contact.setEmail_sess(this.getEmail_sess());
		
		
		listeContact = dao.getLiContact(contact);
		System.out.println("liste: " + listeContact);
		}catch (Exception e) {
			
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	public List<String> getListeContact() {
		return listeContact;
	}

	public void setListeContact(List<String> listeContact) {
		this.listeContact = listeContact;
	}

	public void setEmail_sess(String email) {
		this.email = email;
	}

	/**
	 * @return la date
	 */
	public String getEmail_sess() {
		//System.out.println(" coucou" + email);
		return email;
		
	}

}