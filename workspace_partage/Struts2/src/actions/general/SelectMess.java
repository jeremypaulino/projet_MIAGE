package actions.general;
import com.opensymphony.xwork2.ActionSupport;

import dao.EleveDao;
import dao.MessageDao;

/**
 * @author Jeremy
 *
 */
public class SelectMess extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	 
	
	private String Email_envoy;
	private int nvxmess;
	

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + Email_envoy);
MessageDao dao= new MessageDao();

			nvxmess=dao.nvxmess(Email_envoy);
			

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	
	
	
	public void setEmail_envoy(String Email_envoy) {
		this.Email_envoy = Email_envoy;
	}

	
	public String getEmail_envoy() {
		return Email_envoy;
	}


	public int getnvxmess() {
		return nvxmess;
	}

	/**
	 * @param listeAjaxCours
	 *            le listeAjaxCours a modifier
	 */
	public void setnvxmess(int nvxmess) {
		this.nvxmess = nvxmess;
	}
	
	
}