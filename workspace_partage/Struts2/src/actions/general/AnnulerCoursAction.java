/**
 * 
 */
package actions.general;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

import bean.Cours;
import bean.Emailer;
import bean.Matiere;

import com.opensymphony.xwork2.ActionSupport;

import dao.CoursDao;
import dao.ProfesseurDao;

/**
 * @author Mathieu
 *
 */
public class AnnulerCoursAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	
	private String matiere;
	private Date date;
	private int idprof;
	
	private int id;
	
	public String execute() {
		
		try {
			CoursDao dao= new CoursDao();
			dao.annulerCours(id);
			// on previens le prof
			
			
			ProfesseurDao profdao = new ProfesseurDao();
			
			String mail = profdao.getEmailById(idprof);
			
			String Newligne = System.getProperty("line.separator");
			String sujet = "Administration Ischool | Un de vos cours a été annulé";
			String texte = "Nous avons le regret de vous annoncer que vôtre cours de "+ this.matiere +" du " + date + " a été annuler." +Newligne+
					" Cordialement, L'équipe Ischool";
			Emailer email = new Emailer("ischool@gmail.com","Ischool",mail, sujet, texte);
			email.envoyer();


		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		
		return SUCCESS;
	}

	/**
	 * @return le matiere
	 */
	public String getMatiere() {
		return matiere;
	}

	/**
	 * @param matiere le matiere a modifier
	 */
	public void setMatiere(String matiere) {
		this.matiere = matiere;
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
	 * @return le idprof
	 */
	public int getIdprof() {
		return idprof;
	}

	/**
	 * @param idprof le idprof a modifier
	 */
	public void setIdprof(int idprof) {
		this.idprof = idprof;
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
	
	
	

}
