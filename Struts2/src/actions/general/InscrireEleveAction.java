package actions.general;

import bean.Eleve;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Mathieu
 *
 */
public class InscrireEleveAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Eleve eleve;

	public Eleve getUser() {
		return eleve;
	}

	public void setUser(Eleve eleve) {
		this.eleve = eleve;

	}

	public String inscription() {
		System.out.println(this.getClass() + " inscription()");

		return "success";
	}

}
