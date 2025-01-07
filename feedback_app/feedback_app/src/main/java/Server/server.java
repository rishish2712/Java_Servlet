package Server;

import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/servers")
public class server extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String contact = req.getParameter("contact");
		String email = req.getParameter("email");
		
		res.sendRedirect("feedback.jsp?name=" +URLEncoder.encode(name,"UTF-8") + "&contact=" + URLEncoder.encode(contact,"UTF-8") + "&email=" + URLEncoder.encode(email,"UTF-8"));
		
	}

}
