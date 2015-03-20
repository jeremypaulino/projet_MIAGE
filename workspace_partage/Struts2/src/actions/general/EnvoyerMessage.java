package actions.general;
import bean.Disponibilite;




import bean.Message;

import com.opensymphony.xwork2.ActionSupport;

import dao.DispoDao;
import dao.MessageDao;


/**
 * @author Jeremy
 *
 */
public class EnvoyerMessage extends  ActionSupport {

	private static final long serialVersionUID = 1L;


	private String Email_envoy;
	private String Email_dest;
	private String Text;

	public String execute() {
				
		try {
			
			System.out.println("email envoyeur: - " + Email_envoy);
			System.out.println("email destinataire : - " + Email_dest);
			System.out.println("message : - " + Text);
			
			Message  message= new Message();
			message.setEmail_envoy(this.getEmail_envoy());
			message.setEmail_dest(this.getEmail_dest());
			message.setText(this.getText());
			
			MessageDao dao= new MessageDao();
			dao.message(message);
			
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		
		return SUCCESS;
	}

	
	
	/**
	 * @param date
	 *            la date a modifier
	 */
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
	
	public void setText(String Text) {
		this.Text = Text;
	}

	
	public String getText() {
		return Text;
	}



}
