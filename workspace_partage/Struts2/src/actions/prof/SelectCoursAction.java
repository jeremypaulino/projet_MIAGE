package actions.prof;

import java.util.LinkedList;
import java.util.List;

import org.json.simple.JSONObject;

import bean.Cours;

import com.opensymphony.xwork2.ActionSupport;

import dao.CoursDao;

/**
 * @author Jeremy
 *
 */
public class SelectCoursAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<Cours> listeCours;

    private List  listecourscalend = new LinkedList();
    
	private int IdProf;

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + IdProf);

			CoursDao dao = new CoursDao();
			listeCours = dao.getCoursCalend(IdProf);
			
			
			for(int i = 0 ; i<listeCours.size();i++){
				
			    JSONObject obj = new JSONObject();

				obj.put("date", Long.toString(listeCours.get(i).getTimestamp()));
				
				obj.put("type", "meeting");
				obj.put("title", listeCours.get(i).getMatiere().getNom());
				obj.put("description", listeCours.get(i).getInfoEleve());
				obj.put("url", "http://www.event1.com/");
				
				listecourscalend.add(obj);
			}
			

			
			

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	/**
	 * @return le listeAjaxCours
	 */
	public List<Cours> getListeAjaxCours() {
		return listeCours;
	}

	/**
	 * @param listeAjaxCours
	 *            le listeAjaxCours a modifier
	 */
	public void setListeAjaxCours(List<Cours> listeAjaxCours) {
		this.listeCours = listeAjaxCours;
	}

	public int getIdProf() {
		return IdProf;
	}

	/**
	 * @param listeAjaxCours
	 *            le listeAjaxCours a modifier
	 */
	public void setIdProf(int IdProf) {
		this.IdProf = IdProf;
	}

	/**
	 * @return le listecourscalend
	 */
	public List getListecourscalend() {
		return listecourscalend;
	}


	
	
	
	
}