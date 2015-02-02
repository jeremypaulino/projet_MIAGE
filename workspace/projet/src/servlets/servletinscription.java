package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Utilisateurs;
import metier.Inscription;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/inscription")
public class servletinscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ATT_USER = "utilisateur";
	private static final String ATT_FORM = "form";
	private static final String VUE = "/WEB-INF/inscription.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	public servletinscription() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty( "file.encoding", "UTF-8" );
		//this.getServletContext().getRequestDispatcher( "/WEB-INF/index.jsp" ).forward( request, response );
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
		
		// TODO Auto-generated method stub
	}
	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Pr�paration de l'objet formulaire */
        Inscription form = new Inscription();
		
        /* Appel au traitement et � la validation de la requ�te, et r�cup�ration du bean en r�sultant */
        Utilisateurs utilisateur = form.inscrireUtilisateur( request );
		
        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, utilisateur );
        
        
       
        utilisateur.enregistrerBDD();
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

}
