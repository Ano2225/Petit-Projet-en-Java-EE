package myservletproject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class Servletprojet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Servletprojet() {
        super();
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/index.html").forward(request, response);

    }


	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        // Récupération des données saisies par l'utilisateur
        String nom = request.getParameter("login");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();
        session.setAttribute("nom", nom);
        session.setAttribute("mdp", password);

        // Vérification des données saisies
        
        if (nom != null && nom.equals("Esatic") && password != null && password.equals("Twin2")) {
            request.setAttribute("login", nom);
            request.setAttribute("password", password);

            // Redirection vers la page d'accueil
            request.getRequestDispatcher("/Vue/accueil.jsp").forward(request, response);

        } else {
            request.getRequestDispatcher("/Vue/login.jsp").forward(request, response);

        }
    }


}
