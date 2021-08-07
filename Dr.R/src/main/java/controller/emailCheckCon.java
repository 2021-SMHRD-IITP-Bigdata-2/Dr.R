package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserDAO;

@WebServlet("/emailCheckCon")
public class emailCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		UserDAO uDao = new UserDAO();
		int cnt_email = uDao.confirmEmail(email);
		request.setAttribute("email", email);
		request.setAttribute("cnt_email", cnt_email);
		RequestDispatcher dispatcher = request.getRequestDispatcher("join1.html");
		dispatcher.forward(request, response);
		
		
	
		
	
	}

}
