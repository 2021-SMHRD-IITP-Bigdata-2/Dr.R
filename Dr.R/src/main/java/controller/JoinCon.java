package controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserDAO;
import model.UserDTO;



@WebServlet("/joincon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("join1.html");
		dispatcher.forward(request, response);
	}
	
	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("pw");
		String pw = request.getParameter("email");
		String email = request.getParameter("name");
		int sex = Integer.parseInt(request.getParameter("sex")); 
		// 일단은 String으로 받은 다음에 
		// 이후에 Integer.parseInt사용하기
		
		//순서
//		pstmt.setString(1, uDto.getU_id());
//		pstmt.setString(2, uDto.getU_pw());
//		pstmt.setString(3, uDto.getU_email());
//		pstmt.setString(4, uDto.getU_name());
//		pstmt.setInt(5, uDto.getU_sex());
		
		
		UserDTO uDto = new UserDTO(id, pw, email, name, sex);
		UserDAO dao = new UserDAO();
		int cnt = dao.insertUser(uDto);
//		uDto.setU_email(email);
//		uDto.setU_id(id);
//		uDto.setU_name(name);
//		uDto.setU_pw(pw);
//		uDto.setU_sex(Integer.parseInt(sex));
		
		HttpSession session = request.getSession();
		
		if (cnt == 1) {
			session.setAttribute("id", uDto.getU_id());
			request.setAttribute("message", "회원가입에 성공했습니다!");
		}else {
			request.setAttribute("message", "회원가입에 실패했습니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.html");
		dispatcher.forward(request, response);
		
//		
	
	}

}
