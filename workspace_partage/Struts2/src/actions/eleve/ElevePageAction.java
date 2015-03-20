package actions.eleve;

import java.util.List;
import java.util.Map;

import bean.Eleve;
import bean.Paiement;
import bean.Professeur;
import bean.Utilisateur;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.AdministrateurDao;
import dao.ContactsDao;
import dao.EleveDao;
import dao.MatiereDao;

public class ElevePageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private List<Utilisateur> listecontact;
	private Eleve eleve;


	public String execute() {
		Map session = ActionContext.getContext().getSession();
		int id =  Integer.parseInt(session.get("id").toString());

		
		EleveDao eleveDao = new EleveDao();
		ContactsDao contactDao = new ContactsDao();
		
		

		eleve = eleveDao.getEleveByid(id);
		
		listecontact = contactDao.getLiContact(session.get("email").toString());
		

		return SUCCESS;
	}


	/**
	 * @return le listecontact
	 */
	public List<Utilisateur> getListecontact() {
		return listecontact;
	}


	/**
	 * @param listecontact le listecontact a modifier
	 */
	public void setListecontact(List<Utilisateur> listecontact) {
		this.listecontact = listecontact;
	}


	/**
	 * @return le eleve
	 */
	public Eleve getEleve() {
		return eleve;
	}


	/**
	 * @param eleve le eleve a modifier
	 */
	public void setEleve(Eleve eleve) {
		this.eleve = eleve;
	}





}