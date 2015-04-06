package actions.eleve;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import bean.Cours;
import bean.Matiere;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.CoursDao;
import dao.EleveDao;
import dao.ProfesseurDao;

/**
 * @author Jeremy
 *
 */
public class ChercherCoursAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String stringmatiere;
	
	private Timestamp datedebut;
	
	private Timestamp datefin;
	
	private List<Cours> listeAjaxCours;
	
	private ArrayList<Matiere> listematiere = new ArrayList<Matiere>();
	
	private String tri;

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + stringmatiere);

			Matiere mat = new Matiere(stringmatiere);
			CoursDao dao = new CoursDao();
			
			
			Map session = ActionContext.getContext().getSession();
			String niveau="";
			if(!session.isEmpty()){
			niveau = session.get("niveau").toString();
			}
			
			System.out.println("cette eleve cherche des cours de niveau " + niveau);
			
			String trierpar = "date";
			if (tri.equals("trinom")) {
				trierpar = "utilisateur.nom";
			} 
			else if (tri.equals("trihoraire")) {
				trierpar = "crenaux";
			} 
			else if (tri.equals("trimatiere")) {
				trierpar = "nomM";
			} 
			else if (tri.equals("triavis")) {
				trierpar = "avis";
			}
			else{
				trierpar = "date";
			}
			
			listeAjaxCours = dao.getLiCours2(listematiere, datedebut, datefin, niveau,trierpar);

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	/**
	 * @return le listeAjaxCours
	 */
	public List<Cours> getListeAjaxCours() {
		return listeAjaxCours;
	}

	/**
	 * @param listeAjaxCours
	 *            le listeAjaxCours a modifier
	 */
	public void setListeAjaxCours(List<Cours> listeAjaxCours) {
		this.listeAjaxCours = listeAjaxCours;
	}

	/**
	 * @return le stringmatiere
	 */
	public String getStringmatiere() {
		return stringmatiere;
	}

	/**
	 * @param stringmatiere
	 *            le stringmatiere a modifier
	 */
	public void setStringmatiere(String stringmatiere) {
		String[] tab = stringmatiere.split("#");
		
		for (int i = 0; i < tab.length; i++) {

			String nvx = tab[i];
			
			Matiere matiere = new Matiere(nvx);
			
			
			listematiere.add(matiere);

		}
		
		
		
		this.stringmatiere = stringmatiere;
	}

	public String getProf(int idProf) {

		String nom = "";

		ProfesseurDao profdao = new ProfesseurDao();

		nom = profdao.getNomPrenomById(idProf);

		return nom;
	}

	public String creneauxToHeure(int creneaux) {
		
		Cours cours = new Cours(0,creneaux,0, null, null, creneaux,0);
		
		String plage = "";

		
		plage = cours.creneauxToHeure(creneaux);


			return plage;
	}

	/**
	 * @param datedebut le datedebut a modifier
	 */
	public void setDatedebut(Timestamp datedebut) {
		this.datedebut = datedebut;
	}

	/**
	 * @param datefin le datefin a modifier
	 */
	public void setDatefin(Timestamp datefin) {
		this.datefin = datefin;
	}

	/**
	 * @param tri le tri a modifier
	 */
	public void setTri(String tri) {
		this.tri = tri;
	}

	
	

}