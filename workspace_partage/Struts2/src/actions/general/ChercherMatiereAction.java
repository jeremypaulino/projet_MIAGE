package actions.general;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import dao.MatiereDao;


/**
 * @author Mathieu
 *
 */
public class ChercherMatiereAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String term;
	private List<String> listeAjaxMatiere;

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + term);
			MatiereDao dao = new MatiereDao();
			listeAjaxMatiere = dao.getLiMatieres(term);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	

	/**
	 * @return le listeAjaxMatiere
	 */
	public List<String> getListeAjaxMatiere() {
		return listeAjaxMatiere;
	}



	/**
	 * @param listeAjaxMatiere le listeAjaxMatiere a modifier
	 */
	public void setListeAjaxMatiere(List<String> listeAjaxMatiere) {
		this.listeAjaxMatiere = listeAjaxMatiere;
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