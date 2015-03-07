package actions.general;

import bean.Eleve;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.EleveDao;

/**
 * @author Mathieu
 *
 */
public class InscrireEleveAction extends  ActionSupport implements  ModelDriven {


	EleveDao dao = new EleveDao();

	Eleve eleve = new Eleve(null, null, null, null, null, null, null, 0, null, null, null, null);	

	public String execute() throws Exception {

		// si tout est OK on stock en bdd
		dao.inscrireEleve(eleve);
		
		addActionMessage("Vous êtes bien inscrit sur ISchool, l'école virtuelle inteligente veuillez vous connecter !");
		
		return SUCCESS;
	}

	/**
	 * @return le eleve
	 */
	public Object getModel() {

		return eleve;
	}

	public void validate(){
		
		// faire la validation
		
		//addActionError("I don't know you, dont try to hack me!");

		
	}
	

}
