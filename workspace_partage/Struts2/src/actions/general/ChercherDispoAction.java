/**
 * 
 */
package actions.general;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import bean.Professeur;
import dao.DispoDao;
import dao.VilleDao;

/**
 * @author Mathieu
 *
 */
public class ChercherDispoAction extends ActionSupport {
	private String term;
	private List<String> listeAjaxDispo;

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + term);
			DispoDao dao = new DispoDao();
			//listeAjaxDispo = dao.getLiVille(term);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	/**
	 * @return le term
	 */
	public String getTerm() {
		return term;
	}

	/**
	 * @param term le term a modifier
	 */
	public void setTerm(String term) {
		this.term = term;
	}

	/**
	 * @return le listeAjaxVille
	 */
	public List<String> getListeAjaxVille() {
		return listeAjaxDispo;
	}

	/**
	 * @param listeAjaxVille le listeAjaxVille a modifier
	 */
	public void setListeAjaxVille(List<String> listeAjaxVille) {
		this.listeAjaxDispo = listeAjaxVille;
	}
	
	
}
