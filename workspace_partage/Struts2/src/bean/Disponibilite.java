/**
 * 
 */
package bean;








/**
 * @author Jeremy
 *
 */
public class Disponibilite {

	
	
	private int idProf;
	private int creneaux;
	private String date;
	
	public Disponibilite(int idProf, int crenaux, String date){
		this.idProf=idProf;
		this.creneaux=crenaux;
		this.date=date;
		
	}

	/**
	 * @return le idProf
	 */
	public int getIdProf() {
		return idProf;
	}

	/**
	 * @param idProf le idProf a modifier
	 */
	public void setIdProf(int idProf) {
		this.idProf = idProf;
	}

	/**
	 * @return le creneaux
	 */
	public int getCreneaux() {
		return creneaux;
	}

	/**
	 * @param creneaux le creneaux a modifier
	 */
	public void setCreneaux(int creneaux) {
		this.creneaux = creneaux;
	}

	/**
	 * @return le date
	 */
	public String getDate() {
		return date;
	}

	/**
	 * @param date le date a modifier
	 */
	public void setDate(String date) {
		this.date = date;
	}
	
	
	}




