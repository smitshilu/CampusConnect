package session;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataBase.AuthDAO;

/**
 * Servlet implementation class LoginAuth
 */
@WebServlet("/LoginAuth")
public class LoginAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginAuth() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("Email");
		String password = request.getParameter("Password");

		AuthDAO ad = new AuthDAO();

		if (ad.LoginAuth(email, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			session.setAttribute("type", ad.getType(email));
			session.setAttribute("profile", ad.getStudentProfile(email));
			

			File f = new File(email + ".JPG");
			System.out.println("filepath "+f.getAbsolutePath());
			session.setAttribute("photopath", f.getAbsolutePath());
			response.sendRedirect("NewsFeed");
		} else {
			request.setAttribute("login_error",
					"Username and Password not correct");
			getServletContext().getRequestDispatcher("/login.jsp").forward(
					request, response);
		}

	}
}
