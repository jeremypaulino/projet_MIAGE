package actions.general;



import com.opensymphony.xwork2.ActionSupport;

import dao.DispoDao;
import dao.LuDao;




/**
 * @author Jeremy
 *
 */
public class IndiqueLu extends  ActionSupport {

	private static final long serialVersionUID = 1L;


	private String Email_dest;
	private String Email_envoy;

	public String execute() {
				
		try {
			
			System.out.println("parametres passe en ajax pour le lu : - " + Email_dest + Email_envoy);

			LuDao dao = new LuDao();
			
			dao.IndiqueLu(Email_dest,Email_envoy);
	
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		
		return SUCCESS;
	}

	

	
	public void setEmail_dest(String Email_dest) {
		this.Email_dest = Email_dest;
	}

	
	public String getEmail_dest() {
		return Email_dest;
	}
	
	public void setEmail_envoy(String Email_envoy) {
		this.Email_envoy = Email_envoy;
	}

	
	public String getEmail_envoy() {
		return Email_envoy;
	}



}
