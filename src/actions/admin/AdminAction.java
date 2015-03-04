/**
 * 
 */
package actions.admin;

import java.util.Random;

import bean.Administrateur;
import bean.Email;

import com.opensymphony.xwork2.ActionSupport;

import dao.AdministrateurDao;

/**
 * @author Mathieu
 *
 */
public class AdminAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	AdministrateurDao dao = new AdministrateurDao();

	private Administrateur administrateur;

	@Override
	public String execute() throws Exception {

		// si tout est OK on stock en bdd
		String mail = administrateur.getEmail();
		String mdp = genererMdp();
		dao.addAdmin(mail);

		String Newligne = System.getProperty("line.separator");
		String sujet = "Administration Ischool";

		String texte = "Nous sommes heureux de vous accueillir en tant qu'administrateur de la plateforme ISchool !"
				+ Newligne
				+ "Voilà vos identifiants :"
				+ Newligne
				+ "Identifiant/Email : "
				+ mail
				+ Newligne
				+ "Mot de Passe"
				+ mdp
				+ Newligne
				+ "Vous pourrez le modifier une fois connecté à votre compte";

		new Email(administrateur.getEmail(), sujet, texte);

		return SUCCESS;

	}

	public Administrateur getAdministrateur() {

		return administrateur;

	}

	public void setAdministrateur(Administrateur admin) {

		this.administrateur = admin;

	}

	private static final String CHAR_LIST = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	private static final int RANDOM_STRING_LENGTH = 10;

	/**
	 * Cetet methode genere une string aléatoire
	 * 
	 * @return String aleatoire
	 */
	public String genererMdp() {

		StringBuffer randStr = new StringBuffer();
		for (int i = 0; i < RANDOM_STRING_LENGTH; i++) {
			int number = getRandomNumber();
			char ch = CHAR_LIST.charAt(number);
			randStr.append(ch);
		}
		return randStr.toString();
	}

	/**
	 * Cette methode genere un int aleatoire
	 * 
	 * @return int
	 */
	private int getRandomNumber() {
		int randomInt = 0;
		Random randomGenerator = new Random();
		randomInt = randomGenerator.nextInt(CHAR_LIST.length());
		if (randomInt - 1 == -1) {
			return randomInt;
		} else {
			return randomInt - 1;
		}
	}

}
