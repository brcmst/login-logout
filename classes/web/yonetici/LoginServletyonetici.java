package web.yonetici;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import database.yonetici.LoginDaoyonetici;

import bean.yonetici.LoginBeanyonetici;


@WebServlet("/loginyonetici")
public class LoginServletyonetici extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDaoyonetici loginDaoyonetici;

	public void init() {
		loginDaoyonetici = new LoginDaoyonetici();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String yoneticiAd = request.getParameter("yoneticiAd");
		String yoneticiSifre = request.getParameter("yoneticiSifre");
		LoginBeanyonetici loginBeanyonetici = new LoginBeanyonetici();
		loginBeanyonetici.setyoneticiAd(yoneticiAd);
		loginBeanyonetici.setyoneticiSifre(yoneticiSifre);

		try {
			if (loginDaoyonetici.validate(loginBeanyonetici)) {
				HttpSession session = request.getSession();
				session.setAttribute("yoneticiAd",yoneticiAd);
				response.sendRedirect("/001/Template/yoneticiekran.jsp");
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("yoneticiSifre", yoneticiSifre);
				response.sendRedirect("/001/Template/login12dene.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}