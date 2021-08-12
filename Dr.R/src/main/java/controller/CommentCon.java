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
		
//		���� ��¥, recipe_page�� textarea���� �Է��� �� ��������
//		String cmt_date = ?;
//		String cmt_content = ?;
		
		CommentDAO dao = new CommentDAO();
		
//		���DTO ��ü �����ؼ� �տ��� �޾ƿ� cmt_id, cmt_recipe, cmt_date, cmt_content �� �ֱ�
//		CommentDTO cmt = new CommentDTO();
		
//		�߰��ϴ� �Լ� comment_insert ȣ���ϰ� ������ �̵�
		
	}

}
