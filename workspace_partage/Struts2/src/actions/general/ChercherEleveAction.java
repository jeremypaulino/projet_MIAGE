package actions.general;

import java.util.List;

import bean.Eleve;
import bean.Professeur;

import com.opensymphony.xwork2.ActionSupport;

import dao.EleveDao;

/**
 * @author Mathieu
 *
 */
public class ChercherEleveAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String term;
	private List<Eleve> listeAjaxEleve;

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + term);
			EleveDao dao = new EleveDao();
			listeAjaxEleve = dao.getLiEleve(term);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	/**
	 * @return le listeAjaxProf
	 */
	public List<Eleve> getListeAjaxEleve() {
		return listeAjaxEleve;
	}

	/**
	 * @param listeAjaxProf
	 *            le listeAjaxProf a modifier
	 */
	public void setListeAjaxEleve(List<Eleve> listeAjaxEleve) {
		this.listeAjaxEleve = listeAjaxEleve;
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