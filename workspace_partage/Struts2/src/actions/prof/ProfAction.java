/**
 * 
 */
package actions.prof;

import java.util.Random;

import bean.Administrateur;
import bean.Email;
import bean.Professeur;

import com.opensymphony.xwork2.ActionSupport;

import dao.AdministrateurDao;
import dao.ProfesseurDao;

/**
 * @author Mathieu
 *
 */
public class ProfAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	ProfesseurDao dao = new ProfesseurDao();

	private Professeur professeur;

	@Override
	public String execute() throws Exception {

		// si tout est OK on stock en bdd
		String mail = professeur.getMail();
		String mdp = genererMdp();
		

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

		new Email(professeur.getMail(), sujet, texte);
		
		addActionMessage("Vous avez bien ajouter un admin!");

		return SUCCESS;

	}

	public Professeur getProfesseur() {

		return professeur;

	}

	public void setProfesseur(Professeur prof) {

		this.professeur = prof;

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
