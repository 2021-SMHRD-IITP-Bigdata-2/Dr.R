package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CommentDAO;
import model.CommentDTO;
import model.UserDTO;


@WebServlet("/CommentCon")
public class CommentCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		UserDTO User = (UserDTO) session.getAttribute("login_User");
		
		String cmt_id = User.getU_id();
		String cmt_recipe = request.getParameter("cmt_recipe");
		
//		현재 날짜, recipe_page의 textarea에서 입력한 값 가져오기
//		String cmt_date = ?;
//		String cmt_content = ?;
		
		CommentDAO dao = new CommentDAO();
		
//		댓글DTO 객체 생성해서 앞에서 받아온 cmt_id, cmt_recipe, cmt_date, cmt_content 값 넣기
//		CommentDTO cmt = new CommentDTO();
		
//		추가하는 함수 comment_insert 호출하고 페이지 이동
		
	}

}
