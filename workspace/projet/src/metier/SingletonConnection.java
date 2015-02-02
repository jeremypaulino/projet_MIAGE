/**
 * 
 */
package metier;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author Zosta
 *
 */
public class SingletonConnection {
	private static Connection connection;
	
	static{
		String url ="jdbc:MySql://localhost/ischool";
		String username="root";
		String password ="";
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url, username, password);						 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
		//Statement statement = conn.createStatement();
	}

	/**
	 * @return la connection
	 */
	public static Connection getConnection() {
		return connection;
	}
}
