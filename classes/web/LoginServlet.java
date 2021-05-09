package web;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import database.LoginDao;
import bean.LoginBean;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao;

	public void init() {
		loginDao = new LoginDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String ogrenciNo = request.getParameter("ogrenciNo");
		String ogrenciSifre = request.getParameter("ogrenciSifre");
		LoginBean loginBean = new LoginBean();
		loginBean.setogrenciNo(ogrenciNo);
		loginBean.setogrenciSifre(ogrenciSifre);

		try {
			if (loginDao.validate(loginBean)) {
				HttpSession session = request.getSession();
				session.setAttribute("ogrenciNo",ogrenciNo);
				response.sendRedirect("/001/Template/course-list-table.jsp");
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("ogrenciSifre", ogrenciSifre);
				response.sendRedirect("/001/Template/login12dene.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}