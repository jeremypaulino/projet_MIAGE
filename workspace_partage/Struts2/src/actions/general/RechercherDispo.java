package actions.general;
import java.util.List;

import bean.Disponibilite;





import bean.Eleve;

import com.opensymphony.xwork2.ActionSupport;

import dao.DispoDao;


/**
 * @author Jeremy
 *
 */
public class RechercherDispo extends  ActionSupport {

	private static final long serialVersionUID = 1L;


	private String date;
	private String creneaux;
	private String IdProf;
	List<Integer> list;

	public String execute() {
				
		try {
			
			System.out.println("parametres passe en ajax : - " + date + "et e" + IdProf);

			Disponibilite disponibilite = new Disponibilite(2, 0, null);
			DispoDao dao = new DispoDao();
			
			disponibilite.setIdProf(Integer.parseInt(this.getIdProf()));
			disponibilite.setDate(this.getDate());
			
			list=dao.disponibilite3(disponibilite);
			
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		
		return SUCCESS;
	}

	
	
	/**
	 * @param date
	 *            la date a modifier
	 */
	public void setDate(String date) {
		this.date = date;
	}

	/**
	 * @return la date
	 */
	public String getDate() {
		return date;
	}
	
	
	
	public void setCreneaux(String creneaux) {
		this.creneaux = creneaux;
	}

	/**
	 * @return le creneaux
	 */
	public String getCreneaux() {
		return creneaux;
	}
	
	public void setIdProf(String idProf) {
		this.IdProf = idProf;
	}

	
	public String getIdProf() {
		return IdProf;
	}

	public List<Integer> getList() {
		return list;
	}

	
	 
	public void setList(List<Integer> list) {
		this.list = list;
	}


}
