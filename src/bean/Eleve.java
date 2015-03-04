package bean;

public class Eleve extends Utilisateur {
	


	String niveau;
	
	public Eleve(String mail, String mdp, String pseudo, String nom,
			String prenom, String adresse, String complementAdresse,
			String ville, String etat, String pays,String niveau){
		super(mail, mdp, pseudo, nom,prenom,  adresse,  complementAdresse,ville,  etat,  pays);
		this.niveau = niveau;
		
	}
	
	/**
	 * @return le niveau
	 */
	public String getNiveau() {
		return niveau;
	}

	/**
	 * @param niveau le niveau a modifier
	 */
	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}

}
