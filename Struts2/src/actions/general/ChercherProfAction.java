package actions.general;

import java.util.List;

import bean.Professeur;

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

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + term);
			ProfesseurDao dao = new ProfesseurDao();
			listeAjaxProf = dao.getLiProf(term);
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

}