package dataBase;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SRegistration
 */
@WebServlet("/SRegistration")
public class SRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SRegistration() {
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
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String sex = request.getParameter("sex");
		String pwd = request.getParameter("pwd");
		String stuinterest = request.getParameter("stuinterest");
		String major = request.getParameter("major");
		String classof = request.getParameter("classof");
		String email = request.getParameter("email");

		System.out.println(fname + " ++ " + lname + " ++ " + dob + " ++ " + sex
				+ " ++ " + pwd + " ++ " + classof + " ++ " + stuinterest
				+ " ++ " + email + " ++ " + major);

		AuthDAO ad = new AuthDAO();
		if (!ad.checkEmailAvailble(email)) {
			if (ad.insertStudentRecord(fname, lname, dob, sex, pwd, classof,
					stuinterest, email, major)) {
				response.sendRedirect("newsfeed.jsp");
			}
		} else {
			request.setAttribute("error_email", "Email is already registered");
			getServletContext().getRequestDispatcher("/sregister.jsp")
					.forward(request, response);
		}
	}

}
