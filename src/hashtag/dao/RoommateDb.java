package hashtag.dao;
import java.util.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RoommateDb {
	
	
	ConnectionClass hdao = new ConnectionClass();
	Connection conn = hdao.createCon();
	int count =0;

	//method to save posts
	
	
	public int savePost(String uniqueID, String datenow, String Hashtagname, String newpost){

		String q = "insert into roommate(ID,time,parentFeedID,uname,content) values("+uniqueID+",'"+datenow+"','parent','"+Hashtagname+"','"+newpost+"');";
		int r = 0;
		try {
			Statement stmt = conn.createStatement();
			r = stmt.executeUpdate(q);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}
	
	
	//method to save replies	

	
public int saveReply(String uniqueID, String datenow, String Hashtagname, String ID, String replypost){
		
		String q = "insert into roommate(ID,time,parentFeedID,uname,content) values("+uniqueID+",'"+datenow+"','"+ID+"','"+Hashtagname+"','"+replypost+"');";
		int r1 = 0;
		try {
			Statement stmt = conn.createStatement();
			r1 = stmt.executeUpdate(q);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r1;
	}


//method to get posts

	public ResultSet getPosts(){
			
		
		String q = "SELECT * FROM roommate ORDER BY time desc";
		ResultSet rs = null;
		try {
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(q);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}


	public LinkedHashMap<String, ArrayList> getReplies(){
		
		
		ArrayList<String> contentlist = new ArrayList<String>();
		ArrayList<String> parentFeedID = new ArrayList<String>();
		ArrayList<String> name = new ArrayList<String>();
		ArrayList<String> ID = new ArrayList<String>();
		ArrayList<String> postdate = new ArrayList<String>();
		
		LinkedHashMap<String, ArrayList> m= new LinkedHashMap<String, ArrayList>();
		String q = "SELECT * FROM roommate ORDER BY time desc";
		ResultSet rs = null;
		try {
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(q);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//rs iterate
	
				
				
				try {
					while(rs.next()){	
						contentlist.add(rs.getString("content"));
						parentFeedID.add(rs.getString("parentFeedID"));
						name.add(rs.getString("uname"));
						ID.add(rs.getString("ID"));
						postdate.add(rs.getString("time"));
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				m.put("name", name);
				m.put("parentFeedID", parentFeedID);
				m.put("content", contentlist);
				m.put("id",ID);
				m.put("postdate", postdate);
			
				
				return m;
			
			
		}


}
