package actions.general;
import com.opensymphony.xwork2.ActionSupport;
import dao.EleveDao;

/**
 * @author Jeremy
 *
 */
public class SelectCredit extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	 
    
	private int IdEleve;
	private int credit;

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + IdEleve);

			EleveDao dao = new EleveDao();
			
			credit=dao.getCreditEleve(IdEleve);
			

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	
	public int getCredit() {
		return credit;
	}

	/**
	 * @param listeAjaxCours
	 *            le listeAjaxCours a modifier
	 */
	public void setCredit(int credit) {
		this.credit = credit;
	}
	/**
	 * @return le listeAjaxCours
	 */
	

	public int getIdEleve() {
		return IdEleve;
	}

	/**
	 * @param listeAjaxCours
	 *            le listeAjaxCours a modifier
	 */
	public void setIdEleve(int IdEleve) {
		this.IdEleve = IdEleve;
	}


	
	
	
	
	
}