package actions.admin;

import java.util.List;

import bean.Eleve;
import bean.Paiement;
import bean.Professeur;

import com.opensymphony.xwork2.ActionSupport;

import dao.AdministrateurDao;
import dao.MatiereDao;
import dao.ProfesseurDao;

public class AdminPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<String> listeAdmin;
	private List<Eleve> listeEleves;
	private List<Professeur> listeProf;
	private List<Paiement> listeChequesEnAttente;
	private List<String> listePrix;
	private List<String> listeMatieres;

	public String execute() {

		AdministrateurDao adminDao = new AdministrateurDao();
		MatiereDao matiereDao = new MatiereDao();
		ProfesseurDao profDao = new ProfesseurDao();

		listeAdmin = adminDao.getLiAdmin();
		listeEleves = adminDao.getLiEleves();
		listeProf = profDao.getLiProfEnAttente();
		listeChequesEnAttente = adminDao.getLiChequesEnAttente();
		listePrix = adminDao.getLiPrix();
		listeMatieres = matiereDao.getLiMatieres("");

		return SUCCESS;
	}

	public List<String> getListeAdmin() {
		return listeAdmin;
	}

	public void setListeAdmin(List<String> listeAdmin) {
		this.listeAdmin = listeAdmin;
	}

	/**
	 * @return le listeEleves
	 */
	public List<Eleve> getListeEleves() {
		return listeEleves;
	}

	/**
	 * @param listeEleves
	 *            le listeEleves a modifier
	 */
	public void setListeEleves(List<Eleve> listeEleves) {
		this.listeEleves = listeEleves;
	}

	/**
	 * @return le listeProf
	 */
	public List<Professeur> getListeProf() {
		return listeProf;
	}

	/**
	 * @param listeProf
	 *            le listeProf a modifier
	 */
	public void setListeProf(List<Professeur> listeProf) {
		this.listeProf = listeProf;
	}

	/**
	 * @return le listeCheques
	 */
	public List<Paiement> getListeChequesEnAttente() {
		return listeChequesEnAttente;
	}

	/**
	 * @param listeCheques
	 *            le listeCheques a modifier
	 */
	public void setListeChequesEnAttente(List<Paiement> listeChequesEnAttente) {
		this.listeChequesEnAttente = listeChequesEnAttente;
	}

	/**
	 * @return le listePrix
	 */
	public List<String> getListePrix() {
		return listePrix;
	}

	/**
	 * @param listePrix
	 *            le listePrix a modifier
	 */
	public void setListePrix(List<String> listePrix) {
		this.listePrix = listePrix;
	}

	/**
	 * @return le listeMatieres
	 */
	public List<String> getListeMatieres() {
		return listeMatieres;
	}

	/**
	 * @param listeMatieres
	 *            le listeMatieres a modifier
	 */
	public void setListeMatieres(List<String> listeMatieres) {
		this.listeMatieres = listeMatieres;
	}

}