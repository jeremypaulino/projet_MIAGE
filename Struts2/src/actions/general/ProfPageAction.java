/**
 * 
 */
package actions.general;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.AdministrateurDao;
import dao.MatiereDao;
import dao.ProfesseurDao;
import bean.Professeur;

/**
 * @author Mathieu
 *
 */
public class ProfPageAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Professeur> listeProf;

	public String execute() {

		ProfesseurDao profDao = new ProfesseurDao(); 
		
		listeProf = profDao.getLiProf();
		
 
		return SUCCESS;
	}

	/**
	 * @return le listeProf
	 */
	public List<Professeur> getListeProf() {
		return listeProf;
	}

	/**
	 * @param listeProf le listeProf a modifier
	 */
	public void setListeProf(List<Professeur> listeProf) {
		this.listeProf = listeProf;
	}
	
	
}
