package dataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

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
			String sql1 = "INSERT INTO login VALUES ('" + email + "', '" + pwd
					+ "', '1')";

			System.out.println(sql + " " + sql1);
			s.executeUpdate(sql);
			s.executeUpdate(sql1);
			return true;

			// return false;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
			
		}

	}
}
