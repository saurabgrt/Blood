package bloodbank;
import java.sql.*;
public class ConnectionProvider 
{
	public static Connection getConnection()
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","saurabh96","lnc");
			return con;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
}
