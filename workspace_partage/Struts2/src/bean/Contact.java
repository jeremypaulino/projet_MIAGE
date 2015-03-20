/**
 * 
 */
package bean;

/**
 * @author Jeremy
 *
 */
public class Contact {

	
	
	private String email_sess;
	private String email_dest;
	
	public Contact(String email_sess,String email_dest){
		this.email_sess=email_sess;
		this.email_dest=email_dest;
		
	}

	/**
	 * @return le idProf
	 */
	public String getEmail_sess() {
		return email_sess;
	}

	/**
	 * @param idProf le idProf a modifier
	 */
	public void setEmail_sess(String email_sess) {
		this.email_sess = email_sess;
	}

	/**
	 * @return le idProf
	 */
	public String getEmail_dest() {
		return email_dest;
	}

	/**
	 * @param idProf le idProf a modifier
	 */
	public void setEmail_dest(String email_dest) {
		this.email_dest = email_dest;
	}
	
	
	}




