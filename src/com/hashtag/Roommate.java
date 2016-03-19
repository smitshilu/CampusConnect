package com.hashtag;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hashtag.dao.RoommateDb;
import hashtag.dao.ConnectionClass;

@WebServlet("/Roommate")
public class Roommate extends HttpServlet {

	
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		HttpSession session = request.getSession();
		
		String radio = request.getParameter("optradio");
		String desc = request.getParameter("desc");
		String address = request.getParameter("address");
		String rent = request.getParameter("rent");
		String newpost = radio+"@"+desc+"@"+address+"@"+rent;
		ServletContext context = request.getSession().getServletContext();
		String Hashtagname = (String) session.getAttribute("email");
		
		Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = 
		new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		
		
		String uniqueID = ((sdf.format(dt).replace("-", "")).replace(":", "")).replace(" ", "");
		String datenow = sdf.format(dt);
		
		String action = request.getParameter("action");
		
		if("post".equals(action)){
			
			
				
			RoommateDb hd2 = new RoommateDb();
			
				int r = hd2.savePost(uniqueID,  datenow,  Hashtagname,  newpost);
				if(r>0){
					
					RoommateDb hf = new RoommateDb();
					
					LinkedHashMap m = hf.getReplies();
					
					ArrayList name = (ArrayList) m.get("name");
					ArrayList pid = (ArrayList) m.get("parentFeedID");
					ArrayList content = (ArrayList) m.get("content");
					ArrayList id = (ArrayList) m.get("id");
					ArrayList postdate = (ArrayList) m.get("postdate");
					
					ArrayList pindex = new ArrayList<>();
					ArrayList nindex = new ArrayList<>();
					
					
				for (int counter = 0; counter < pid.size(); counter++) {
						
						if(pid.get(counter).equals("parent")){
							pindex.add(counter);
							
						}
					}
					
					
					
					for (int counter = 0; counter < name.size(); counter++) {
						
						if(name.get(counter).equals(Hashtagname)){
							nindex.add(counter);
							
							
						}
					}
					
					
					LinkedHashMap<String, ArrayList> i= new LinkedHashMap<String, ArrayList>();
					i.put("nindex", nindex);
					i.put("pindex",pindex);
					i.put("content",content);
					i.put("pid",pid);
					i.put("id", id);
					i.put("postdate", postdate);
					i.put("email", name);
					
					request.setAttribute("m", i);
					
				RequestDispatcher rd1=request.getRequestDispatcher("Index");
			    rd1.forward(request,response);
				}else{
					request.setAttribute("errpost", "Sorry error occured");
					RequestDispatcher rd1=request.getRequestDispatcher("roommate.jsp");
				    rd1.forward(request,response);
				}
			
			
		
		}
		
		else if("reply".equals(action)){
			
			String ID = (request.getParameter("replyposts"));//to save the parentpost 
			String replyposta = request.getParameter("replynew");
			RoommateDb hd3 = new RoommateDb();
			
			
			int r1 = hd3.saveReply(uniqueID,  datenow,  Hashtagname,  ID, replyposta);
			if(r1>0){
			
				RoommateDb hf = new RoommateDb();
				
				LinkedHashMap m = hf.getReplies();
				
				ArrayList name = (ArrayList) m.get("name");
				ArrayList pid = (ArrayList) m.get("parentFeedID");
				ArrayList content = (ArrayList) m.get("content");
				ArrayList id = (ArrayList) m.get("id");
				ArrayList postdate = (ArrayList) m.get("postdate");
				
				ArrayList pindex = new ArrayList<>();
				ArrayList nindex = new ArrayList<>();
				
				
			for (int counter = 0; counter < pid.size(); counter++) {
					
					if(pid.get(counter).equals("parent")){
						pindex.add(counter);
						
					}
				}
				
				
				
				for (int counter = 0; counter < name.size(); counter++) {
					
					if(name.get(counter).equals(Hashtagname)){
						nindex.add(counter);
						
						
					}
				}
				
				
				LinkedHashMap<String, ArrayList> i= new LinkedHashMap<String, ArrayList>();
				i.put("nindex", nindex);
				i.put("pindex",pindex);
				i.put("content",content);
				i.put("pid",pid);
				i.put("email", name);
				i.put("postdate", postdate);
				i.put("id", id);
				
				request.setAttribute("m", i);
				
			
				RequestDispatcher rd1=request.getRequestDispatcher("Index");
			    rd1.forward(request,response);
				}else{
					request.setAttribute("errpost", "Sorry error occured");
					RequestDispatcher rd1=request.getRequestDispatcher("roommate.jsp");
				    rd1.forward(request,response);
				}
			
			
			
		}
}
	
	

}
