package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MyfoodDAO;
import model.MyfoodDTO;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/insert_notCon")
public class insert_notCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		UserDTO User = (UserDTO)session.getAttribute("login_User");
		
		String id = User.getU_id();
		String notfood = request.getParameter("notfood");
		int size = Integer.parseInt(request.getParameter("size"));
		
		
		System.out.println(size);
		System.out.println(notfood);
		System.out.println(id);
		
		MyfoodDAO dao = new MyfoodDAO();
//		ArrayList<MyfoodDTO> nf = new ArrayList<MyfoodDTO>();
//		
//		if(size == 0) {
//			if (size == 1) {
//				if (size == 2) {
//					if (size == 3) {
//						if (size == 4) {
//							MyfoodDTO e = new MyfoodDTO(id, null, null, null, null, null, null, null, null, null, notfood);							
//						}
//						MyfoodDTO d = new MyfoodDTO(id, null, null, null, null, null, null, null, null, notfood, null);
//					}
//					MyfoodDTO c = new MyfoodDTO(id, null, null, null, null, null, null, null, notfood, null, null);
//				}
//				MyfoodDTO b = new MyfoodDTO(id, null, null, null, null, null, null, notfood, null, null, null);
//			}
//			MyfoodDTO a = new MyfoodDTO(id, null, null, null, null, null, notfood, null, null, null, null);
//		}
		
//		if(dao.select_not(user.getU_id())[0] != null) {
//			MyfoodDTO a = new MyfoodDTO(id, null, null, null, null, null, notfood, null, null, null, null);
//			
//			if(dao.select_not(user.getU_id())[1] != null) {
//				MyfoodDTO b = new MyfoodDTO(id, null, null, null, null, null, null, notfood, null, null, null);
//				
//				if(dao.select_not(user.getU_id())[2] != null) {
//					MyfoodDTO c = new MyfoodDTO(id, null, null, null, null, null, null, null, notfood, null, null);
//					
//					if(dao.select_not(user.getU_id())[3] != null) {
//						MyfoodDTO d = new MyfoodDTO(id, null, null, null, null, null, null, null, null, notfood, null);
//						
//						if(dao.select_not(user.getU_id())[4] != null) {
//							MyfoodDTO e = new MyfoodDTO(id, null, null, null, null, null, null, null, null, null, notfood);
//					}
//				}
//			}
//		}
//		}
		
		int cnt = dao.update_not(notfood, id, size);
		
		if(cnt > 0) {
			System.out.println("못먹는 음식 저장 성공");
			response.sendRedirect("food_filter.jsp");
		}
		else {
			System.out.println("못먹는 음식 저장 실패");
			response.sendRedirect("food_filter.jsp");
		}
		

	}
		

}
