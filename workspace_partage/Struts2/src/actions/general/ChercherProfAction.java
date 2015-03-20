package actions.general;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import bean.Matiere;
import bean.Professeur;
import bean.Statut;

import com.opensymphony.xwork2.ActionSupport;

import dao.ProfesseurDao;

/**
 * @author Mathieu
 *
 */
public class ChercherProfAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String term;
	private List<Professeur> listeAjaxProf;
	private ArrayList<Statut> listestatut = new ArrayList<Statut>();
	private ArrayList<Matiere> listematiere = new ArrayList<Matiere>();
	
	private ArrayList<String> listeniveau = new ArrayList<String>();

	
	private String stringmatiere;
	private String stringstatut;
	private String stringniveau;

	public String execute() {
		try {
			System.out.println("parametres passe en ajax : - " + term + listematiere + " niveau :"+listeniveau);
			ProfesseurDao dao = new ProfesseurDao();
			listeAjaxProf = dao.getLiProf2(term, listestatut, listematiere);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

		return SUCCESS;
	}

	/**
	 * @return le listeAjaxProf
	 */
	public List<Professeur> getListeAjaxProf() {
		return listeAjaxProf;
	}

	/**
	 * @param listeAjaxProf
	 *            le listeAjaxProf a modifier
	 */
	public void setListeAjaxProf(List<Professeur> listeAjaxProf) {
		this.listeAjaxProf = listeAjaxProf;
	}

	/**
	 * @param term
	 *            le term a modifier
	 */
	public void setTerm(String term) {
		this.term = term;
	}

	/**
	 * @return le term
	 */
	public String getTerm() {
		return term;
	}

	/**
	 * @return le test
	 */
	public String getStringmatiere() {
		return stringmatiere;
	}

	/**
	 * @param test le test a modifier
	 */
	public void setStringmatiere(String test) {
		
		String[] tab = test.split("#");
		
		for (int i = 0; i < tab.length; i++) {

			String nvx = tab[i];
			
			Matiere matiere = new Matiere();
			
			matiere.setNom(nvx);
			
			listematiere.add(matiere);

		}
		
		
		
		this.stringmatiere = test;
	}

	/**
	 * @return le test2
	 */
	public String getStringstatut() {
		return stringstatut;
	}

	/**
	 * @param test2 le test2 a modifier
	 */
	public void setStringstatut(String test2) {
		
		String[] tab = test2.split("#");
		
		for (int i = 0; i < tab.length; i++) {

			String nvx = tab[i];
			
			Statut accepte= Statut.ACCEPTE;
			Statut refuse= Statut.REFUSE;
			Statut attente= Statut.ATTENTE;

			
			if(nvx.equals("accepte")){
				listestatut.add(accepte);				
			}
			else if(nvx.equals("refuse")){
				listestatut.add(refuse);
			}
			else if(nvx.equals("attente")){
				listestatut.add(attente);				
			}
		}
		this.stringstatut = test2;
	}

	/**
	 * @return le stringniveau
	 */
	public String getStringniveau() {
		return stringniveau;
	}

	/**
	 * @param stringniveau le stringniveau a modifier
	 */
	public void setStringniveau(String stringniveau) {
		
		String[] tab = stringniveau.split("#");
		
		for (int i = 0; i < tab.length; i++) {
			String nvx = tab[i];	
			listeniveau.add(nvx);
		}
		this.stringniveau = stringniveau;
	}
	
	
	

}

