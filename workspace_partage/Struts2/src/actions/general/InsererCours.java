package actions.general;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import bean.Cours;
import bean.Disponibilite;
import bean.Matiere;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.CoursDao;
import dao.DispoDao;
import dao.EleveDao;
import dao.ProfesseurDao;

/**
 * @author Jeremy
 *
 */
public class InsererCours extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private Timestamp date2;

	private int creneaux;
	private int IdProf;
	private int IdEleve;
	private String matiere;
	
	private boolean resultat;

	public String execute() {

		try {

			CoursDao dao = new CoursDao();

			int heure = this.creneauxtotimestamp(creneaux)*60*60*1000;
			
			date2.setTime(date2.getTime()+heure);
			
			// on verifie que l'eleve a assez de credit
			
			EleveDao eleve = new EleveDao();
			
			int crediteleve = eleve.getCreditEleve(IdEleve);
			
			String niveaueleve = eleve.getNiveau(IdEleve);
			
			int prix = 0;
			
			if(niveaueleve.equals("6e") || niveaueleve.equals("5e") || niveaueleve.equals("4e") || niveaueleve.equals("3e")){
				prix = 5;
			}
			else if(niveaueleve.equals("2nd") || niveaueleve.equals("1ere") || niveaueleve.equals("Terminale")  ){
				prix = 10;
			}
			else if(niveaueleve.equals("Bac+1") || niveaueleve.equals("Bac+2") || niveaueleve.equals("Bac+3") || niveaueleve.equals("Bac+4")|| niveaueleve.equals("Bac+5")){
				prix = 15;

			}
			if(crediteleve-prix<0){
				// l'eleve n'a pas assez de credit				
				resultat = false;
				
			}
			else{
				// l'eleve a assez de credit
				
				// on insere le cours en BDD
				dao.InsererCoursDao(IdEleve, IdProf, matiere, date2);

				// on update les credit eleve
				String maileleve = eleve.getEmailById(IdEleve);
				eleve.updateCreditEleve(maileleve,crediteleve-prix);
				
				ProfesseurDao profdao = new ProfesseurDao();
				int creditprof = profdao.getCreditProf(IdProf);
				
				String mailprof = profdao.getEmailById(IdProf);
				// on update les credits prof
				profdao.updateCreditProf(mailprof,creditprof+prix);
				
				// on enleve la disponibilités du prof
				DispoDao dispodao = new DispoDao();
				
				Timestamp ts = date2;//your object here.
				Calendar cal = Calendar.getInstance();
				cal.setTime(new Date(ts.getTime()));
				int anne = cal.get(Calendar.YEAR);
				int mois = cal.get(Calendar.MONTH)+1;
				int jour = cal.get(Calendar.DAY_OF_MONTH);
				
				
				String mois2 = Integer.toString(mois); 
				if(mois<10){
					mois2 = "0"+mois;
				}
				
				String date = anne+"-"+mois2+"-"+jour;
				
				System.out.println(date);
				
				Disponibilite dispo = new Disponibilite(IdProf, creneaux, date);
				
				dispodao.disponibilite2(dispo);

				resultat = true;

			}	

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	public void setCreneaux(int creneaux) {
		this.creneaux = creneaux;
	}

	/**
	 * @return le creneaux
	 */
	public int getCreneaux() {
		return creneaux;
	}

	public void setIdProf(int idProf) {
		this.IdProf = idProf;
	}

	public int getIdProf() {
		return IdProf;
	}

	public void setIdEleve(int idEleve) {
		this.IdEleve = idEleve;
	}

	public int getIdEleve() {
		return IdEleve;
	}

	public void setMatiere(String matiere) {
		this.matiere = matiere;
	}

	public String getMatiere() {
		return matiere;
	}
	
	/**
	 * @param date2 le date2 a modifier
	 */
	public void setDate2(Timestamp date2) {
		this.date2 = date2;
	}

	public int creneauxtotimestamp(int i) {

		if (creneaux == 1) {
			i = 8;
		}

		if (creneaux == 2) {
			i = 9;
		}

		if (creneaux == 3) {
			i = 10;
		}

		if (creneaux == 4) {
			i = 11;
		}

		if (creneaux == 5) {
			i = 12;
		}

		if (creneaux == 6) {
			i = 13;
		}

		if (creneaux == 7) {
			i = 14;
		}

		if (creneaux == 8) {
			i = 15;
		}

		if (creneaux == 9) {
			i = 16;
		}

		if (creneaux == 10) {
			i = 17;
		}

		if (creneaux == 11) {
			i = 18;
		}

		if (creneaux == 12) {
			i = 19;
		}

		return i;
	}

	/**
	 * @return le resultat
	 */
	public Boolean getResultat() {
		return resultat;
	}
	
	

}
