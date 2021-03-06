package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserDAO;
import model.UserDTO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();
		
		
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		
		UserDAO dao = new UserDAO();
		UserDTO user = dao.user_login(u_id, u_pw);
		
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("login_User", user);
			System.out.println("성공");
			// 로그인 성공 후 이동페이지
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("실패");
			response.sendRedirect("login.html");
			// 로그인 실패 후 이동페이지
		}
	}

}
