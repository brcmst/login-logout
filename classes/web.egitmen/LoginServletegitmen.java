package web.egitmen;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import database.egitmen.LoginDaoegitmen;

import bean.egitmen.LoginBeanegitmen;


@WebServlet("/loginegitmen")
public class LoginServletegitmen extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDaoegitmen loginDaoegitmen;

	public void init() {
		loginDaoegitmen = new LoginDaoegitmen();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String egitmenNo = request.getParameter("egitmenNo");
		String egitmenSifre = request.getParameter("egitmenSifre");
		LoginBeanegitmen loginBeanegitmen = new LoginBeanegitmen();
		loginBeanegitmen.setegitmenNo(egitmenNo);
		loginBeanegitmen.setegitmenSifre(egitmenSifre);

		try {
			if (loginDaoegitmen.validate(loginBeanegitmen)) {
				HttpSession session = request.getSession();
				session.setAttribute("egitmenNo",egitmenNo);
				response.sendRedirect("/001/Template/course-list-table-egitmen.jsp");
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("egitmenSifre", egitmenSifre);
				response.sendRedirect("/001/Template/login12dene.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}