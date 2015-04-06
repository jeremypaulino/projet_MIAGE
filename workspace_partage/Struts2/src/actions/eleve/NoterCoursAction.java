/**
 * 
 */
package actions.eleve;

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
public class NoterCoursAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int id;
	private int note;
	
	public String execute() {
		
		try {
			CoursDao dao= new CoursDao();
			dao.noterCours(id, note);

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		
		return SUCCESS;
	}

	/**
	 * @param id du cours a noté
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @param note la note du cours
	 */
	public void setNote(int note) {
		this.note = note;
	}
	
	
}
