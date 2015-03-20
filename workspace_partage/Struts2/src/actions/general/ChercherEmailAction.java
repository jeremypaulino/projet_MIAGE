package actions.general;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.EmailDao;

/**
 * @author Jeremy
 *
 */
public class ChercherEmailAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String term;
	private List<String> listeAjaxEmail;

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + term);
			EmailDao dao = new EmailDao();
			listeAjaxEmail = dao.getLiEmail(term);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	

	/**
	 * @return le listeAjaxEmail
	 */
	public List<String> getListeAjaxEmail() {
		return listeAjaxEmail;
	}



	/**
	 * @param listeAjaxMatiere le listeAjaxMatiere a modifier
	 */
	public void setListeAjaxEMail(List<String> listeAjaxEmail) {
		this.listeAjaxEmail = listeAjaxEmail;
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