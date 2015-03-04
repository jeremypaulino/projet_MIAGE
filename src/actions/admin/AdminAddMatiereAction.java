/**
 * 
 */
package actions.admin;

import bean.Matiere;

import com.opensymphony.xwork2.ActionSupport;

import dao.MatiereDao;

/**
 * @author Mathieu
 *
 */
public class AdminAddMatiereAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	MatiereDao dao = new MatiereDao();

	private Matiere matiere;

	@Override
	public String execute() throws Exception {

		// si tout est OK on stock en bdd
		dao.addMatiere(matiere.getNom());

		return SUCCESS;

	}

	public Matiere getMatiere() {

		return matiere;

	}

	public void setMatiere(Matiere matiere) {

		this.matiere = matiere;

	}

}
