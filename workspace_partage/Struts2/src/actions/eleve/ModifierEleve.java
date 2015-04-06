package actions.eleve;

import java.util.Map;

import bean.Eleve;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.EleveDao;

/**
 * @author Mathieu
 *
 */
public class ModifierEleve extends ActionSupport implements ModelDriven {



	
	
	//String test = (String) ((ActionContext) session).get("email");
	
	EleveDao dao = new EleveDao();

	Eleve eleve = new Eleve(null, null, null, null, null, null, null, 0, null, null, null, null);	

	public String execute(){
		
		
		
		
		Map attibutes = ActionContext.getContext().getSession();
		
		String mail = attibutes.get("email").toString();
		
		System.out.println("parametres passe en ajax de eleve: - " + eleve.getMail() + eleve.getPseudo() +eleve.getNom() + eleve.getMdp() + mail);
		// si tout est OK on stock en bdd
		dao.ModifierEleve(eleve,mail);
		
		
		
		//addActionMessage("Vous êtes bien inscrit sur ISchool, l'école virtuelle inteligente veuillez vous connecter !");
		
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
