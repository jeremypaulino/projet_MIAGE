package actions.eleve;






import com.opensymphony.xwork2.ActionSupport;

import dao.DispoDao;
import dao.PaiementDao;


/**
 * @author Jeremy
 *
 */
public class InsererPaiement extends  ActionSupport {

	private static final long serialVersionUID = 1L;


	private String typep;
	private int montant;
	private int idEleve;

	public String execute() {
				
		try {
			
			System.out.println("parametres passe en ajax : - " + typep + idEleve + montant);

			
			PaiementDao dao = new PaiementDao();
			
			
			dao.insertPaiement(montant,typep,idEleve);
			
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		
		return SUCCESS;
	}

	
	
	/**
	 * @param date
	 *            la date a modifier
	 */
	public void setTypep(String typep) {
		this.typep = typep;
	}

	/**
	 * @return la date
	 */
	public String getTypep() {
		return typep;
	}
	
	
	
	public void setMontant(int montant) {
		this.montant = montant;
	}

	/**
	 * @return le creneaux
	 */
	public int getMontant() {
		return montant;
	}
	
	public void setIdEleve(int idEleve) {
		this.idEleve = idEleve;
	}

	
	public int getidEleve() {
		return idEleve;
	}



}
