/**
 * 
 */
package bean;
import java.sql.Timestamp;


import java.text.SimpleDateFormat;

import bean.Statut;

/**
 * @author Mathieu
 *
 */
public class Paiement {
	private int id;
	private Timestamp date_creation;
	private String nom;
	private String prenom;
	private String montant;
	private Statut statut;
	private TypePaiement typePaiement;
	private static String formatDate = "dd/MM/yyyy";
	

	private String dateString;
	
	/**
	 * @param id
	 * @param nom
	 * @param prenom
	 * @param montant
	 */
	public Paiement(int id,Timestamp date_creation, String nom, String prenom, String montant,TypePaiement typePaiement,Statut statut) {
		this.id = id;
		this.date_creation = date_creation;
		this.nom = nom;
		this.prenom = prenom;
		this.montant = montant;
		this.statut = statut;
		this.typePaiement = typePaiement;
		
		
		
		this.dateString = new SimpleDateFormat(formatDate).format(date_creation);
	}
	/**
	 * @return le id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id le id a modifier
	 */
	public void setId(int id) {
		this.id = id;
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
	 * @return le montant
	 */
	public String getMontant() {
		return montant;
	}
	/**
	 * @param montant le montant a modifier
	 */
	public void setMontant(String montant) {
		this.montant = montant;
	}
	/**
	 * @return le statut
	 */
	public Statut getStatut() {
		return statut;
	}
	/**
	 * @param statut le statut a modifier
	 */
	public void setStatut(Statut statut) {
		this.statut = statut;
	}
	/**
	 * @return le typePaiement
	 */
	public TypePaiement getTypePaiement() {
		return typePaiement;
	}
	/**
	 * @param typePaiement le typePaiement a modifier
	 */
	public void setTypePaiement(TypePaiement typePaiement) {
		this.typePaiement = typePaiement;
	}
	/**
	 * @return le date_creation
	 */
	public Timestamp getDate_creation() {
		
		return date_creation;
	}
	/**
	 * @param date_creation le date_creation a modifier
	 */
	public void setDate_creation(Timestamp date_creation) {
		this.dateString = new SimpleDateFormat(formatDate).format(date_creation);
		this.date_creation = date_creation;
	}
	
	/**
	 * @return le dateString
	 */
	public String getDateString() {
		return dateString;
	}

	

}
