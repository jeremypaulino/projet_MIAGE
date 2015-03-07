package bean;

public abstract class Utilisateur {
	
	String mail;
	String mdp;
	String pseudo;
	String nom;
	String prenom;
	String adresse;
	String complementadresse;
	int codepostale;
	String ville;
	String etat;
	String pays;
	int credit;
	
	/**
	 * @param mail
	 * @param mdp
	 * @param pseudo
	 * @param nom
	 * @param prenom
	 * @param adresse
	 * @param complementAdresse
	 * @param ville
	 * @param etat
	 * @param pays
	 */
	public Utilisateur(String mail, String mdp, String pseudo, String nom,
			String prenom, String adresse, String complementadresse, int codepostale,
			String ville, String etat, String pays) {
		
		this.mail = mail;
		this.mdp = mdp;
		this.pseudo = pseudo;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.complementadresse = complementadresse;
		this.ville = ville;
		this.etat = etat;
		this.pays = pays;
		this.credit = 0;
		this.codepostale = codepostale;
		
	}
	
	
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getMdp() {
		return mdp;
	}
	/**
	 * @return le pseudo
	 */
	public String getPseudo() {
		return pseudo;
	}


	/**
	 * @param pseudo le pseudo a modifier
	 */
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}


	/**
	 * @return le nom
	 */
	public String getNom() {
		return nom;
	}


	/**
	 * @param nom le nom a modifier
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}


	/**
	 * @return le prenom
	 */
	public String getPrenom() {
		return prenom;
	}


	/**
	 * @param prenom le prenom a modifier
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	/**
	 * @return le adresse
	 */
	public String getAdresse() {
		return adresse;
	}


	/**
	 * @param adresse le adresse a modifier
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}


	/**
	 * @return le complementAdresse
	 */
	public String getComplementAdresse() {
		return complementadresse;
	}


	/**
	 * @param complementAdresse le complementAdresse a modifier
	 */
	public void setComplementAdresse(String complementAdresse) {
		this.complementadresse = complementAdresse;
	}


	/**
	 * @return le ville
	 */
	public String getVille() {
		return ville;
	}


	/**
	 * @param ville le ville a modifier
	 */
	public void setVille(String ville) {
		this.ville = ville;
	}


	/**
	 * @return le etat
	 */
	public String getEtat() {
		return etat;
	}


	/**
	 * @param etat le etat a modifier
	 */
	public void setEtat(String etat) {
		this.etat = etat;
	}


	/**
	 * @return le pays
	 */
	public String getPays() {
		return pays;
	}


	/**
	 * @param pays le pays a modifier
	 */
	public void setPays(String pays) {
		this.pays = pays;
	}


	/**
	 * @return le credit
	 */
	public int getCredit() {
		return credit;
	}


	/**
	 * @param credit le credit a modifier
	 */
	public void setCredit(int credit) {
		this.credit = credit;
	}


	public void setMdp(String mdp) {
		this.mdp = mdp;
	}


	/**
	 * @return le codepostale
	 */
	public int getCodepostale() {
		return codepostale;
	}


	/**
	 * @param codepostale le codepostale a modifier
	 */
	public void setCodepostale(int codepostale) {
		this.codepostale = codepostale;
	}


	/**
	 * @return le complementadresse
	 */
	public String getComplementadresse() {
		return complementadresse;
	}


	/**
	 * @param complementadresse le complementadresse a modifier
	 */
	public void setComplementadresse(String complementadresse) {
		this.complementadresse = complementadresse;
	}
	
}
