/**
 * 
 */
package bean;

/**
 * @author Mathieu
 *
 */
public class Matiere {
	String nom;

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
	@Override
	public String toString() {
		 return "Bravo vous venez d'ajouter " + getNom()+ "en tant que matiere "  ;
	}
}