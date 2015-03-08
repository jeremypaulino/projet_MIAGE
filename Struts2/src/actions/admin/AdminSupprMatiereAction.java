/**
 * 
 */
package actions.admin;

import com.opensymphony.xwork2.ActionSupport;

import dao.MatiereDao;

;;

/**
 * @author Mathieu
 *
 */
public class AdminSupprMatiereAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	MatiereDao dao = new MatiereDao();

	private String matiere;

	@Override
	public String execute() throws Exception {

		// si tout est OK on stock en bdd
		String matiere = this.getMatiere();
		dao.supprMatiere(matiere);
		addActionMessage("Vous avez bien supprimer "+ matiere + "!");

		return SUCCESS;

	}

	/**
	 * @return le email
	 */
	public String getMatiere() {
		return matiere;
	}

	/**
	 * @param email
	 *            le email a modifier
	 */
	public void setMatiere(String nom) {
		this.matiere = nom;
	}

}
