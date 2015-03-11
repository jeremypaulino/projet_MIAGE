/**
 * 
 */
package actions.admin;

import com.opensymphony.xwork2.ActionSupport;

import dao.ProfesseurDao;

/**
 * @author Mathieu
 *
 */
public class AdminRefuserProfAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	ProfesseurDao dao = new ProfesseurDao();

	private String email;

	@Override
	public String execute() throws Exception {

		// si tout est OK on stock en bdd
		dao.refuserProf(this.getEmail());
		addActionMessage("Vous avez bien refusé le professeur " +this.getEmail());
		
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
