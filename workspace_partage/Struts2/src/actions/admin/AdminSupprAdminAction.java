/**
 * 
 */
package actions.admin;


import com.opensymphony.xwork2.ActionSupport;

import dao.AdministrateurDao;

/**
 * @author Mathieu
 *
 */
public class AdminSupprAdminAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	AdministrateurDao dao = new AdministrateurDao();

	private String email;


	@Override
	public String execute() throws Exception {

		// si tout est OK on stock en bdd
		dao.supprAdmin(this.getEmail());
		addActionMessage("Vous avez bien supprimé l'administrateur "+this.getEmail() + " !");
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
