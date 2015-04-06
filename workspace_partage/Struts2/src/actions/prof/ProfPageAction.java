package actions.prof;

import java.util.List;
import java.util.Map;

import bean.Cours;
import bean.Eleve;
import bean.Paiement;
import bean.Professeur;
import bean.Utilisateur;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.AdministrateurDao;
import dao.ContactsDao;
import dao.CoursDao;
import dao.EleveDao;
import dao.MatiereDao;
import dao.ProfesseurDao;

public class ProfPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private List<Utilisateur> listecontact;
	private Professeur professeur;
	private List<Cours> listecourpasse;


	public String execute() {
		Map session = ActionContext.getContext().getSession();
		
		int id =  Integer.parseInt(session.get("id").toString());
		
		ProfesseurDao profDao = new ProfesseurDao();
		ContactsDao contactDao = new ContactsDao();
		CoursDao coursDao = new CoursDao();
		
		listecourpasse = coursDao.getMesCoursPasseProf(id);
		
		professeur = profDao.getProfById(id);
		
		listecontact = contactDao.getLiContact(session.get("email").toString());
		

		return SUCCESS;
	}


	/**
	 * @return le listecontact
	 * 
	 * 
	 */
	public String getEleve(int idEleve) {

		String nom = "";

		EleveDao elevedao = new EleveDao();

		nom = elevedao.getNomPrenomById(idEleve);

		return nom;
	}
	
	public List<Cours> getListecourpasse() {
		return listecourpasse;
	}


	/**
	 * @param listecontact le listecontact a modifier
	 */
	public void setListecourpasse(List<Cours> listecourpasse) {
		this.listecourpasse = listecourpasse;
	}
	
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
	 * @return le professeur
	 */
	public Professeur getProfesseur() {
		return professeur;
	}


	/**
	 * @param professeur le professeur a modifier
	 */
	public void setProfesseur(Professeur professeur) {
		this.professeur = professeur;
	}


}