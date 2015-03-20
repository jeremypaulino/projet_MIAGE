/**
 * 
 */
package bean;

import java.sql.Date;








/**
 * @author Jeremy
 *
 */
public class Message {

	
	
	private String Email_envoy;
	private String Email_dest;
	private String Text;
	//private String Date;
	
	/*public Contact(String email_sess,String email_dest){
		this.email_sess=email_sess;
		this.email_dest=email_dest;
		
	}*/

	/**
	 * @return le idProf
	 */
	public String getEmail_envoy() {
		return Email_envoy;
	}

	/**
	 * @param idProf le idProf a modifier
	 */
	public void setEmail_envoy(String Email_envoy) {
		this.Email_envoy = Email_envoy;
	}

	
	
	
	/**
	 * @return le idProf
	 */
	public String getEmail_dest() {
		return Email_dest;
	}

	/**
	 * @param idProf le idProf a modifier
	 */
	public void setEmail_dest(String Email_dest) {
		this.Email_dest = Email_dest;
	}
	
	
	
	
	
	
	public String getText() {
		return Text;
	}

	/**
	 * @param idProf le idProf a modifier
	 */
	public void setText(String Text) {
		this.Text = Text;
	}
	
	
	
	
	/*public String getDate() {
		return Date;
	}*/

	/**
	 * @param idProf le idProf a modifier
	 */
	/*public void setDate(String Date) {
		this.Date = Date;
	}*/
	
	
	}




