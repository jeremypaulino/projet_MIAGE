package actions.eleve;

import java.util.List;
import java.util.Map;

import bean.Cours;
import bean.Document;
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

public class ElevePageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<Utilisateur> listecontact;
	private List<Cours> listecourpasse;
	private List<Cours> listecourfutur;

	private Eleve eleve;

	public String execute() {
		Map session = ActionContext.getContext().getSession();
		int id = Integer.parseInt(session.get("id").toString());

		EleveDao eleveDao = new EleveDao();
		ContactsDao contactDao = new ContactsDao();
		CoursDao coursDao = new CoursDao();

		eleve = eleveDao.getEleveByid(id);
		listecourpasse = coursDao.getMesCoursPasse(id);
		listecourfutur = coursDao.getMesCoursFutur(id);
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
	 * @param listecontact
	 *            le listecontact a modifier
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
	 * @param eleve
	 *            le eleve a modifier
	 */
	public void setEleve(Eleve eleve) {
		this.eleve = eleve;
	}

	/**
	 * @return le courpasse
	 */
	public List<Cours> getListecourpasse() {
		return listecourpasse;
	}

	public String getProf(int idProf) {

		String nom = "";

		ProfesseurDao profdao = new ProfesseurDao();

		nom = profdao.getNomPrenomById(idProf);

		return nom;
	}

	public String creneauxToHeure(int creneaux) {

		Cours cours = new Cours(0,creneaux,0, null, null, creneaux,0);
		String plage = "";
		plage = cours.creneauxToHeure(creneaux);
		return plage;
	}

	/**
	 * @return le listecourfutur
	 */
	public List<Cours> getListecourfutur() {
		return listecourfutur;
	}
	
	

}