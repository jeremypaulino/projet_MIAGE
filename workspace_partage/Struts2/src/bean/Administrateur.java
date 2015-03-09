/**
 * 
 */
package bean;

/**
 * @author Mathieu
 *
 */
public class Administrateur {
	String email;
	/**
	 * @return le email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email le email a modifier
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		 return "Bravo vous venez d'ajouter " + getEmail()+ "en tant qu'administrateur "  ;
	}

	

 

}
