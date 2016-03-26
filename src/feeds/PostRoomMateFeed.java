package feeds;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataBase.AuthDAO;

/**
 * Servlet implementation class PostRoomMateFeed
 */
@WebServlet("/PostRoomMateFeed")
public class PostRoomMateFeed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostRoomMateFeed() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		String pid = (String) request.getParameter("pid");
		String description = (String) request.getParameter("description");
		String roommatetype = (String) request.getParameter("optradio");
		String amount = (String) request.getParameter("amount");
		String address = (String) request.getParameter("address");
		
		Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String id = ((sdf.format(dt).replace("-", "")).replace(":",
				"")).replace(" ", "");
		new java.text.SimpleDateFormat("yyyy-MM-dd");
		String datenow = sdf.format(dt);
		
		AuthDAO ad = new AuthDAO();
		if(ad.insertRoomMateFeed(id, email, pid, description, roommatetype, amount, address, datenow)) {
			response.sendRedirect("RoomMateFeed");
		}
		else {
			response.sendRedirect("roommate.jsp");
		}
		
	}

}
