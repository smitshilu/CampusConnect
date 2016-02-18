package dataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import model.StudentProfile;

public class AuthDAO {

	Connection conn = null;
	Statement s = null;

	public AuthDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/campusconnect", "root", "");
			s = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public boolean LoginAuth(String email, String password) {
		String sql = "select * from login where Email='" + email + "'";

		try {

			java.sql.ResultSet rs = s.executeQuery(sql);
			String thisemail = "null";
			String thispassword = "null";

			while (rs.next()) {
				thisemail = rs.getString("Email");
				thispassword = rs.getString("Password");
			}

			if (thisemail.equals(email) && thispassword.equals(password)) {
				return true;

			} else {
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;

	}

	public String getType(String email) {
		String sql = "select Type from login where email='" + email + "'";

		try {

			java.sql.ResultSet rs = s.executeQuery(sql);
			String type = "null";

			while (rs.next()) {
				type = rs.getString("Type");
			}
			return type;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean insertStudentRecord(String fname, String lname, String dob,
			String sex, String pwd, String classof, String stuinterest,
			String email, String major) {

		try {

			SimpleDateFormat format = new SimpleDateFormat("yyyy-dd-MM");
			Date date = format.parse(dob);

			String sql = "INSERT INTO student VALUES ('" + fname + "', '"
					+ lname + "', '" + email + "', '" + format.format(date)
					+ "', '" + sex + "', '" + major + "'," + classof + ", '"
					+ stuinterest + "')";

			int random_number = (int) Math.round(Math.random() * 999999);

			String sql1 = "INSERT INTO login VALUES ('" + email + "', "
					+ random_number + ", '1')";

			System.out.println(sql + " " + sql1);
			if (s.executeUpdate(sql) == 1) {
				if (s.executeUpdate(sql1) == 1) {
					// EmailVeri ev = new EmailVeri();
					// ev.sendMail(email, random_number);
					return true;
				}
				return false;
			}
			// return false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;

		}
		return false;
	}

	public boolean checkEmailAvailble(String email) {

		String query = "select * from student where Email = '" + email + "'";

		try {
			ResultSet rs = s.getResultSet();
			rs = s.executeQuery(query);
			String getemail = null;
			if (rs.next()) {
				getemail = rs.getString("Email");
			}

			if (email.equals(getemail))
				return true;
			else
				return false;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public ArrayList<StudentProfile> getStudentProfile(String email) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		ResultSet rs = null;

		String query = "SELECT * FROM `student` where Email = '" + email + "'";

		try {
			rs = s.executeQuery(query);

			ArrayList<StudentProfile> profile = new ArrayList<>();

			while (rs.next()) {
				String getemail = rs.getString("Email");
				String getdob = rs.getString("Dob");
				String getsex = rs.getString("Sex");
				String getmajor = rs.getString("Major");
				String getclassof = rs.getString("Classof");
				String getinterest = rs.getString("Major");
				String getfname = rs.getString("Fname");
				String getlname = rs.getString("Lname");
				StudentProfile studentProfile = new StudentProfile(getfname,
						getlname, getemail, getdob, getsex, getmajor,
						getclassof, getinterest);
				profile.add(studentProfile);
			}
			return profile;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
