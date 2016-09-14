package photoUpload;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import dataBase.AuthDAO;

/**
 * Servlet implementation class PhotoUpload
 */
@WebServlet("/PhotoUpload")
public class PhotoUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PhotoUpload() {
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

		HttpSession session = request.getSession();

		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(
						new DiskFileItemFactory()).parseRequest(request);
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						String filename = new File(item.getName()).getName();
						String fileextension = (FilenameUtils
								.getExtension(filename)).toUpperCase();
						String name = session.getAttribute("email") + "."
								+ fileextension;

						// String filepath = "WebContent\\CSS" + File.separator
						// + "\\images"
						// + File.separator + "\\" + name;

						String filepath = new File(name).getAbsolutePath();
						System.out.println(filepath);

						File f = new File(filepath + "\\" + name);
						item.write(f);

						System.out.println(f.getAbsolutePath());

						AuthDAO ad = new AuthDAO();
						ad.insertPhoto((String) session.getAttribute("email"),
								name);
						session.setAttribute("photo", f.getAbsolutePath() + "/"
								+ name);
						session.setAttribute("photolocation",
								f.getAbsolutePath() + "\\");

						File fLocation = new File(f.getAbsolutePath());
						fLocation.listFiles();

						response.sendRedirect("profile.jsp");

					}
				}

			} catch (Exception ex) {
				ex.printStackTrace();
			}

		} else {
			System.out.println("File not Uploaded Successfully");
		}
		// request.getRequestDispatcher("/profile.jsp").forward(request,
		// response);
	}
}
