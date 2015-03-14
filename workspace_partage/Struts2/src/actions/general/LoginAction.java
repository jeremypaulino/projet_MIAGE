/**
 * 
 */
package actions.general;

import java.util.Map;



import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.LoginDao;

/**
 * @author Mathieu
 *
 */
public class LoginAction extends ActionSupport  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	private String email;
	private String mdp;

	public String execute() throws Exception {
		String type = LoginDao.validate(email, mdp);
		
		
		if(!type.isEmpty()){
			Map session = ActionContext.getContext().getSession();
			
			// qu'est ce qu'on met dans notre session ? 
			
			//savoir si on est logue ou non
			session.put("log", "true");
			
			// savoir l'email utilisateur
			session.put("email", email);
			session.put("message", "");
			session.put("type", type);
			
			
			int id=0;
			if(type.equals("eleve") || type.equals("professeur") ){
				id = LoginDao.getId(email);
			}
			session.put("id", id);
			
			
			return SUCCESS;
		}
		else
			return ERROR;
		
	}

	public String logout() throws Exception {
		// HttpSession session = ServletActionContext.getRequest().getSession();
		// session.removeAttribute("logined");
		// session.removeAttribute("context");
		Map session = ActionContext.getContext().getSession();
		session.remove("log");
		session.remove("email");
		session.remove("type");
		session.remove("message");
		session.remove("id");
		return SUCCESS;
	}


}
