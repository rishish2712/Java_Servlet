package Server;

import java.io.IOException;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/database")
public class database extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String contact = req.getParameter("contact");
		String email = req.getParameter("email");
		
		req.setAttribute("name",name);
		req.setAttribute("email", email);
		req.setAttribute("contact", contact);
		
		System.out.println("Name received: " + name);
        System.out.println("Contact received: " + contact);
        System.out.println("Email received: " + email);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("feedback.jsp");
        dispatcher.forward(req, res);
        
        res.sendRedirect("index.jsp");
    }
	
		
}
