package dao;

import java.sql.*;


public class Datahelper {
	static Connection conn;
	static Statement st;
   public static void connection() throws Exception
   {
	     Class.forName("com.mysql.jdbc.Driver"); // register the driver
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobapp","root",""); //create connection string
		st = conn.createStatement(); // manage SQL query
   }
   public static int dmlOpe(String query) throws Exception
   {
	   return st.executeUpdate(query);
   }
   public static ResultSet dqlOPe(String query) throws SQLException
   {
	   return st.executeQuery(query);
   }
   public static void closeConnection() throws SQLException
   {
	   conn.close();
   }
}
