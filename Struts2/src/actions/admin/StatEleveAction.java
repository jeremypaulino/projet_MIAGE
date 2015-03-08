/**
 * 
 */
package actions.admin;

import com.opensymphony.xwork2.ActionSupport;

import dao.EleveDao;;

/**
 * @author Mathieu
 *
 */
public class StatEleveAction extends ActionSupport{
	
	
	private String term;
	int nombre;
	private static final long serialVersionUID = 1L;
	
	
	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + term);
			EleveDao dao = new EleveDao();
			nombre = dao.getStatEleve(term);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}


	/**
	 * @return le nombre
	 */
	public int getNombre() {
		return nombre;
	}


	/**
	 * @param nombre le nombre a modifier
	 */
	public void setNombre(int nombre) {
		this.nombre = nombre;
	}


	/**
	 * @return le term
	 */
	public String getTerm() {
		return term;
	}


	/**
	 * @param term le term a modifier
	 */
	public void setTerm(String term) {
		this.term = term;
	}
	
	
	
	
}
