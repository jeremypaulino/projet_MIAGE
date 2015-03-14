package actions.general;

import java.util.ArrayList;
import java.util.List;

import bean.Matiere;
import bean.Professeur;
import bean.Statut;

import com.opensymphony.xwork2.ActionSupport;

import dao.ProfesseurDao;

/**
 * @author Mathieu
 *
 */
public class ChercherProfAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String term;
	private List<Professeur> listeAjaxProf;
	private ArrayList<String> listestatut;
	private ArrayList<String> listematiere;
	
	private String test;

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + term + listematiere);
			ProfesseurDao dao = new ProfesseurDao();
			//listeAjaxProf = dao.getLiProf2(term, listeStatut, listeMatiere);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	/**
	 * @return le listeAjaxProf
	 */
	public List<Professeur> getListeAjaxProf() {
		return listeAjaxProf;
	}

	/**
	 * @param listeAjaxProf
	 *            le listeAjaxProf a modifier
	 */
	public void setListeAjaxProf(List<Professeur> listeAjaxProf) {
		this.listeAjaxProf = listeAjaxProf;
	}

	/**
	 * @param term
	 *            le term a modifier
	 */
	public void setTerm(String term) {
		this.term = term;
	}

	/**
	 * @return le term
	 */
	public String getTerm() {
		return term;
	}

	/**
	 * @return le listestatut
	 */
	public ArrayList<String> getListestatut() {
		return listestatut;
	}

	/**
	 * @param listestatut le listestatut a modifier
	 */
	public void setListestatut(ArrayList<String> listestatut) {
		this.listestatut = listestatut;
	}

	/**
	 * @return le listematiere
	 */
	public ArrayList<String> getListematiere() {
		return listematiere;
	}

	/**
	 * @param listematiere le listematiere a modifier
	 */
	public void setListematiere(ArrayList<String> listematiere) {
		this.listematiere = listematiere;
	}

	/**
	 * @return le test
	 */
	public String getTest() {
		return test;
	}

	/**
	 * @param test le test a modifier
	 */
	public void setTest(String test) {
		this.test = test;
	}



	

	
	

}