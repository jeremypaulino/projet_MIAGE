/**
 * 
 */
package dao;

//import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;





import bean.Cours;
import bean.Disponibilite;
import bean.Eleve;
import bean.Matiere;
import bean.Professeur;
import bean.Statut;

/**
 * @author Jeremy
 *
 */
public class CoursDao {

	public List<Cours> getLiCours(Matiere matiere) {

		List<Cours> list = new ArrayList<Cours>();
		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement(
							"SELECT utilisateur.nom,prenom,nomM,crenaux,date, professeur.idProf FROM professeur JOIN utilisateur ON professeur.email=utilisateur.email JOIN disponibilite ON professeur.idProf=disponibilite.idProf JOIN matiereprof ON professeur.idProf=matiereprof.idProf WHERE matiereprof.nomM=?");

			ps.setString(1, matiere.getNom());

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				Matiere mat = new Matiere(rs.getString("nomM"));
				Cours nvx = new Cours( 0,rs.getInt("idProf"),0, rs.getDate("date"),mat, rs.getInt("crenaux"), 0);

				list.add(nvx);

			}

			// System.out.println("test");
		} catch (Exception e) {

			e.printStackTrace();

		}
		return list;
	}

	/**
	 * @param id de l'eleve dont on veut afficher les cours
	 * @return la liste des cours passé
	 */
	public List<Cours> getMesCoursPasse(int id) {
		List<Cours> list = new ArrayList<Cours>();
		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement(
							"SELECT cours.id,cours.idProf,idEleve,compteRendu,matiere,date,nbHeures,note FROM cours LEFT JOIN professeur ON cours.idProf = professeur.idProf LEFT JOIN utilisateur ON professeur.email = utilisateur.email  WHERE idEleve = ? AND date < NOW()");

			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Matiere mat = new Matiere(rs.getString("matiere"));

				Cours nvx = new Cours(rs.getInt("id"),rs.getInt("idProf"),rs.getInt("idEleve"), rs.getDate("date"),	mat, 0, rs.getInt("note"));

				nvx.setCreneaux(nvx.timestampToCreneaux(rs.getTimestamp("date")));

				list.add(nvx);

			}

			// System.out.println("test");
		} catch (Exception e) {

			e.printStackTrace();

		}
		return list;
	}
	
	public List<Cours> getMesCoursPasseProf(int id) {
		List<Cours> list = new ArrayList<Cours>();
		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement(
							"SELECT cours.id,cours.idProf,idEleve,compteRendu,matiere,date,nbHeures,note FROM cours LEFT JOIN professeur ON cours.idProf = professeur.idProf LEFT JOIN utilisateur ON professeur.email = utilisateur.email  WHERE cours.idProf = ? AND date < NOW()");

			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Matiere mat = new Matiere(rs.getString("matiere"));

				Cours nvx = new Cours(rs.getInt("id"),rs.getInt("idProf"),rs.getInt("idEleve"), rs.getDate("date"),	mat, 0, rs.getInt("note"));

				nvx.setCreneaux(nvx.timestampToCreneaux(rs.getTimestamp("date")));

				list.add(nvx);

			}

			// System.out.println("test");
		} catch (Exception e) {

			e.printStackTrace();

		}
		return list;
	}

	/**
	 * @param id de l'eleve dont on veut afficher les cours
	 * @return la liste des futu cours
	 */
	public List<Cours> getMesCoursFutur(int id) {
		List<Cours> list = new ArrayList<Cours>();
		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement(
							"SELECT id, cours.idProf,idEleve,compteRendu,matiere,date,nbHeures,note FROM cours LEFT JOIN professeur ON cours.idProf = professeur.idProf LEFT JOIN utilisateur ON professeur.email = utilisateur.email  WHERE idEleve = ? AND date > NOW()");

			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Matiere mat = new Matiere(rs.getString("matiere"));

				Cours nvx = new Cours(rs.getInt("id"),rs.getInt("idProf"),rs.getInt("idEleve"), rs.getDate("date"),	mat, 0,0);

				nvx.setCreneaux(nvx.timestampToCreneaux(rs.getTimestamp("date")));

				list.add(nvx);

			}

			// System.out.println("test");
		} catch (Exception e) {

			e.printStackTrace();

		}
		return list;
	}

	public void InsererCoursDao(int IdEleve,int IdProf,String matiere,java.sql.Timestamp timestamp) {

		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement("INSERT INTO cours(idProf, idEleve, matiere, date) VALUES (?,?,?,?)");
			
			
			ps.setInt(1, IdProf);
			ps.setInt(2, IdEleve);
			ps.setString(3, matiere);
			ps.setTimestamp(4, timestamp);

			ps.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		}
	}

	/**
	 * @param id du cours a annuler
	 */
	public void annulerCours(int id) {
		
		
		try {
			PreparedStatement ps = SingletonConnection.getConnection().prepareStatement("DELETE FROM cours WHERE id =? ");
			
			ps.setInt(1, id);

			ps.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		}
		
	}
	
	
	public List<Cours> getCoursCalend(int id) {
		List<Cours> list = new ArrayList<Cours>();
		try {
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement("SELECT id, matiere, date, idProf,idEleve, note FROM cours  WHERE idProf = ? AND date > NOW()");

			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Matiere mat = new Matiere(rs.getString("matiere"));

				Cours nvx = new Cours(rs.getInt("id"),rs.getInt("idProf"),rs.getInt("idEleve"), rs.getTimestamp("date"),mat, 0, rs.getInt("note"));

				nvx.setCreneaux(nvx.timestampToCreneaux(rs.getTimestamp("date")));

				list.add(nvx);

			}

			// System.out.println("test");
		} catch (Exception e) {

			e.printStackTrace();

		}
		return list;
	}

	/**
	 * @param id du cours a noté
	 * @param note du cours
	 */
	public void noterCours(int id, int note) {
		try {
			PreparedStatement ps = SingletonConnection.getConnection().prepareStatement("UPDATE cours SET note = ? WHERE id = ?");
						
			ps.setInt(1, note);
			ps.setInt(2, id);

			ps.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		}	
	}

	/**
	 * @param listematiere
	 * @param niveau 
	 * @param trierpar 
	 * @return
	 */
	public List<Cours> getLiCours2(ArrayList<Matiere> listematiere, Timestamp datedebut, Timestamp datefin, String niveau, String trierpar) {
		List<Cours> list = new ArrayList<Cours>();
		
		try {
			String conditions="";
			String ordre = " ORDER BY "+trierpar;
			
			if (!listematiere.get(0).getNom().isEmpty()) {
				for (int i = 0; i < listematiere.size(); i++) {
					// le premier where
					if (i == 0) {
						conditions = "WHERE matiereprof.nomM='"
								+ listematiere.get(i).getNom() + "'";
					} else {
						conditions = conditions + " OR matiereprof.nomM='"
								+ listematiere.get(i).getNom() + "'";
					}
				}
			}
			
			if(datedebut == null){
				 java.util.Date date= new java.util.Date();
				datedebut = new Timestamp(date.getTime());
			}
			
			// si date debut avant datefin on echange
			if( datefin != null && datedebut.after(datefin)){
				Timestamp temp = datedebut;
				
				datedebut = datefin;
				
				datefin = temp;
				
			}
			
			// si on a pas encore de conditions
			if(conditions.isEmpty()){
				conditions = "WHERE date >='"+datedebut + "'";
			}
			else{
				conditions = conditions +"AND date >='"+datedebut + "'";
			}
			
			if(datefin != null){
				
				conditions = conditions +"AND date <='"+datefin + "'";
			}
			
			if(!niveau.isEmpty()){
				conditions = conditions +"AND niveauprof.nom ='"+niveau + "'";
			}
			
			
			
			
			
			String req ="SELECT utilisateur.nom,prenom,nomM,crenaux,date, professeur.idProf, niveauprof.nom, moyenne "
					+ "FROM professeur JOIN utilisateur ON professeur.email=utilisateur.email "
					+ "JOIN disponibilite ON professeur.idProf=disponibilite.idProf "
					+ "JOIN niveauprof ON professeur.idProf=niveauprof.idProf "
					+ "JOIN matiereprof ON professeur.idProf=matiereprof.idProf "
					+ "JOIN moyenneprof ON professeur.idProf=moyenneprof.idProf "+ conditions + ordre;
			
			
			
			
			PreparedStatement ps = SingletonConnection
					.getConnection()
					.prepareStatement(req);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				Matiere mat = new Matiere(rs.getString("nomM"));
				Cours nvx = new Cours( 0,rs.getInt("idProf"),0, rs.getDate("date"),mat, rs.getInt("crenaux"), rs.getInt("moyenne"));

				list.add(nvx);

			}

			// System.out.println("test");
		} catch (Exception e) {

			e.printStackTrace();

		}
		return list;
	}

}
