/**
 * 
 */
package bean;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import dao.EleveDao;

/**
 * @author Mathieu
 *
 */
public class Cours {
	
	private int id;
	private int idProf;
	private int idEleve;

	private Date date;
	private Matiere matiere;
	private int creneaux;
	private int note;
	
	
	
	
	/**
	 * @param id
	 * @param idProf
	 * @param idEleve
	 * @param date
	 * @param matiere
	 * @param creneaux
	 * @param note
	 */
	public Cours(int id,int idProf,int idEleve, Date date, Matiere matiere, int creneaux, int note) {
		this.id = id;
		this.date = date;
		this.matiere = matiere;
		this.creneaux = creneaux;
		this.idProf = idProf;
		this.idEleve = idEleve;
		this.note = note;
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
	 * @return le date
	 */
	public Date getDate() {
		return date;
	}
	/**
	 * @param date le date a modifier
	 */
	public void setDate(Date date) {
		this.date = date;
	}
	/**
	 * @return le matiere
	 */
	public Matiere getMatiere() {
		return matiere;
	}
	/**
	 * @param matiere le matiere a modifier
	 */
	public void setMatiere(Matiere matiere) {
		this.matiere = matiere;
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
	 * @return le idEleve
	 */
	public int getIdEleve() {
		return idEleve;
	}

	/**
	 * @param idEleve le idEleve a modifier
	 */
	public void setIdEleve(int idEleve) {
		this.idEleve = idEleve;
	}

	/**
	 * @param creneaux2
	 * @return
	 */
	public String creneauxToHeure(int creneaux2) {
		
		String plage="";

		if (creneaux == 1)
			plage = "8h00 - 9h00";
		else if (creneaux == 2)
			plage = "9h00 - 10h00";
		else if (creneaux == 3)
			plage = "10h00 - 11h00";
		else if (creneaux == 4)
			plage = "11h00 - 12h00";
		else if (creneaux == 5)
			plage = "12h00 - 13h00";
		else if (creneaux == 6)
			plage = "13h00 - 14h00";
		else if (creneaux == 7)
			plage = "14h00 - 15h00";
		else if (creneaux == 8)
			plage = "15h00 - 16h00";
		else if (creneaux == 9)
			plage = "16h00 - 17h00";
		else if (creneaux == 10)
			plage = "17h00 - 18h00";
		else if (creneaux == 11)
			plage = "18h00 - 19h00";
		else if (creneaux == 12)
			plage = "19h00 - 20h00";
		
		return plage;
	}
	


	/**
	 * @param timestamp
	 * @return
	 */
	public int timestampToCreneaux(Timestamp timestamp) {
		int creneau = 0;
		String heure = new SimpleDateFormat("HH:mm").format(new Date(timestamp.getTime()));

		if (heure.equals("08:00"))
			creneau = 1;
		else if (heure.equals("09:00"))
			creneau = 2;
		else if (heure.equals("10:00"))
			creneau = 3;
		else if (heure.equals("11:00"))
			creneau = 4;
		else if (heure.equals("12:00"))
			creneau = 5;
		else if (heure.equals("13:00"))
			creneau = 6;
		else if (heure.equals("14:00"))
			creneau = 7;
		else if (heure.equals("15:00"))
			creneau = 8;
		else if (heure.equals("16:00"))
			creneau = 9;
		else if (heure.equals("17:00"))
			creneau = 10;
		else if (heure.equals("18:00"))
			creneau = 11;
		else if (heure.equals("19:00"))
			creneau = 12;
		
		return creneau;
	}
	
	
	public long getTimestamp(){
		
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		System.out.println("Calender - Time in milliseconds : " + calendar.getTimeInMillis());
		
		long ts =  calendar.getTimeInMillis();
				
		return ts;		
	}

	/**
	 * @return
	 */
	public String getInfoEleve() {
		String eleve;
		
		EleveDao elevedao = new EleveDao();
		
		eleve = elevedao.getEleveByid(this.getIdEleve()).getPrenom() +" "+ elevedao.getEleveByid(this.getIdEleve()).getNom();
		
		return eleve;
	}

	/**
	 * @return le id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @return le note
	 */
	public int getNote() {
		return note;
	}
	
	


	
	
}
