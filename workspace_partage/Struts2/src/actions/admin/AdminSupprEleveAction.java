/**
 * 
 */
package actions.admin;


import com.opensymphony.xwork2.ActionSupport;

import dao.EleveDao;

/**
 * @author Mathieu
 *
 */
public class AdminSupprEleveAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	EleveDao dao = new EleveDao();

	private String email;


	@Override
	public String execute() throws Exception {

		// si tout est OK on stock en bdd
		dao.supprEleve(this.getEmail());
		addActionMessage("Vous avez bien supprimé l'élève "+this.getEmail() + " !");
		return SUCCESS;

	}
	/**
	 * @return le email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email le email a modifier
	 */
	public void setEmail(String email) {
		this.email = email;
	}


}
