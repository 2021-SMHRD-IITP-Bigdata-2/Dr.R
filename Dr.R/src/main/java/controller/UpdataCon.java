package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DiseaseDTO;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/UpdataCon")
public class UpdataCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 테스트용 시작
//		String[] disease = request.getParameterValues("disease");
//		
//		for (int i = 0; i < disease.length; i++) {
//			System.out.println(disease[i]+"  ");
//		}
		// 테스트용 종료

		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		UserDTO User = (UserDTO)session.getAttribute("login_User");

		
		String u_id = User.getU_id();
		String u_pw = request.getParameter("pw");
		String u_name = request.getParameter("name");
		String u_email = User.getU_email();
		int u_sex = User.getU_sex();

		UserDTO update_User = new UserDTO(u_id, u_pw, u_email, u_name, u_sex);
		UserDAO dao = new UserDAO();
		int cnt = dao.User_update(update_User);

		
		// 회원 질병 수정
//		DiseaseDTO Disease = (DiseaseDTO)session.getAttribute("");
//		
//		String dis_id = Disease.getDis_id();
//		
//		String dis_dang = request.getParameter("dis_dang");
//		String dis_go = request.getParameter("dis_go");
//		String dis_we = request.getParameter("dis_we");
//		String dis_ho = request.getParameter("dis_ho");
//		int dis_no = Integer.parseInt(request.getParameter("dis_no"));
//		
		
//		DiseaseDTO update_Disease = new DiseaseDTO(dis_id, dis_dang, dis_go, dis_we, dis_ho, dis_no);

//		int cnt2 = dao.Disease_update(update_Disease);
		
		if (cnt > 0) {
			session.setAttribute("login_User", update_User);
//			session.setAttribute("Disease_User", update_Disease);
			response.sendRedirect("join1.html");
		}else {
			response.sendRedirect("member_info_change2.jsp");
		}


	}

}
