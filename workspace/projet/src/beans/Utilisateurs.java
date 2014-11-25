/**
 * 
 */
package beans;

/**
 * @author Zosta
 *
 */
public class Utilisateurs {
	
	  private String email;
	  private String mdp;
	  
	  public void Utilisateurs(String pEmail, String pMdp) {
	      this.email = pEmail;
	      this.mdp = pMdp;
	      // l'id est créer par mysql
	  }
	  public void changeEmail(String pEmail) {
	      email = pEmail;
	  }

	  public String getEmail() {
	    return email;
	  }

	  public void changeMdp(String pMdp) {
	      this.mdp = pMdp;
	  }

}
