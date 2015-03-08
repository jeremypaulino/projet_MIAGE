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
public class AdminRefuserChequeAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	AdministrateurDao dao = new AdministrateurDao();

	private int id;

	@Override
	public String execute() throws Exception {

		// si tout est OK on stock en bdd
		dao.refuserCheque(this.getId());
		addActionMessage("Vous avez bien refusé le chèque");

		return SUCCESS;

	}

	/**
	 * @return le id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            le id a modifier
	 */
	public void setId(int id) {
		this.id = id;
	}

}
