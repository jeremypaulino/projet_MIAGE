package bean;

public class Professeur extends Utilisateur {
	
	private String cv;
	private String motivations;
	private Statut statut;
	
	/**
	 * @param mail du prof
	 * @param mdp du prof
	 * @param pseudo du prof
	 * @param nom du prof
	 * @param prenom du prof
	 * @param adresse du prof
	 * @param complementAdresse du prof
	 * @param ville du prof
	 * @param etat du prof
	 * @param pays du prof
	 * @param cv du prof
	 * @param motivations du prof
	 */
	public Professeur(String mail, String mdp, String pseudo, String nom,
			String prenom, String adresse, String complementAdresse,
			String ville, String etat, String pays,String cv,String motivations,Statut statut) {
		super(mail, mdp, pseudo, nom, prenom, adresse, complementAdresse, ville, etat,
				pays);
		this.statut = statut;
		this.cv = cv;
		this.motivations = motivations;
	}

	/**
	 * @return le cv du professeur
	 */
	public String getCv() {
		return cv;
	}

	/**
	 * @return le motivations du professeur
	 */
	public String getMotivations() {
		return motivations;
	}

	/**
	 * @return le statut du professeur
	 */
	public Statut getStatut() {
		return statut;
	}
	
	

}
