/**
 * 
 */
package actions.general;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Mathieu
 *
 */
public class ModifSession extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private String message;
	
	public void modifMessage(){
		
		Map session = ActionContext.getContext().getSession();
		session.put("message", message);

	}
	
	public void effacerMessage(){
		Map session = ActionContext.getContext().getSession();
		session.put("message", "");
	}

	/**
	 * @return le message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message le message a modifier
	 */
	public void setMessage(String message) {
		this.message = message;
	}
	
	

}
