package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servletcontact
 */
@WebServlet("/servletcontact")
public class servletcontact extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public servletcontact() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//this.getServletContext().getRequestDispatcher( "/WEB-INF/index.jsp" ).forward( request, response );
		this.getServletContext().getRequestDispatcher( "/WEB-INF/contacts.jsp" ).forward( request, response );
		
		// TODO Auto-generated method stub
	}

	
	

}
