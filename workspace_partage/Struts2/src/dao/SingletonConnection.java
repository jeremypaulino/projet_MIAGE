package dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author Mathieu
 * 
 */
public class SingletonConnection {

	private static String urlJ = "jdbc:mysql://localhost:8889/ischooltest";
	private static String user = "root";
	private static String passwdJ = "root";

	private static String url = "jdbc:mysql://localhost/ischooltest";
	private static String passwd = "";

	private static Connection connect;

	public static Connection getConnection() {

		if (connect == null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");

				if (System.getProperty("os.name").startsWith("Windows 8.1")) {

					connect = DriverManager.getConnection(url, user, passwd);

				} else
					connect = DriverManager.getConnection(urlJ, user, passwdJ);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return connect;
	}
}
