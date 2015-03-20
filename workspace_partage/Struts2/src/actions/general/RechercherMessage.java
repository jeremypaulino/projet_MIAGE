package actions.general;
import java.util.List;

import bean.Disponibilite;





import bean.Eleve;
import bean.Message;

import com.opensymphony.xwork2.ActionSupport;

import dao.DispoDao;
import dao.MessageDao;


/**
 * @author Jeremy
 *
 */
public class RechercherMessage extends  ActionSupport {

	private static final long serialVersionUID = 1L;


	private String Email_envoy;
	private String Email_dest;
	List<String> list;

	public String execute() {
				
		try {
			
			System.out.println("email envoyeur: - " + Email_envoy);
			System.out.println("email destinataire : - " + Email_dest);

			Message  message= new Message();
			message.setEmail_envoy(this.getEmail_envoy());
			message.setEmail_dest(this.getEmail_dest());
			
			MessageDao dao = new MessageDao();
			
			message.setEmail_envoy(this.getEmail_envoy());
			message.setEmail_dest(this.getEmail_dest());
			
			list=dao.messageselect(message);
			
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		
		return SUCCESS;
	}

	
	
	public void setEmail_envoy(String Email_envoy) {
		this.Email_envoy = Email_envoy;
	}

	/**
	 * @return la date
	 */
	public String getEmail_envoy() {
		return Email_envoy;
	}
	
	
	
	public void setEmail_dest(String Email_dest) {
		this.Email_dest = Email_dest;
	}

	/**
	 * @return le creneaux
	 */
	public String getEmail_dest() {
		return Email_dest;
	}

	public List<String> getList() {
		return list;
	}

	
	 
	public void setList(List<String> list) {
		this.list = list;
	}


}
