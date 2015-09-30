package app4rUser;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TechDetails {

	static final String url = "jdbc:mysql://113.128.164.50/techtool";
	
	public static List GetTechDetails() {

	      List<String> list = new ArrayList<String>();

	      try {

	          Class.forName("com.mysql.jdbc.Driver");
	          Connection con = DriverManager.getConnection(url, "monty", "some_pass");

	          Statement stmt = con.createStatement();

	          ResultSet result = stmt.executeQuery("SELECT * FROM job_details");

	          System.out.println("result" +result);
	          while(result.next())
	          {
	             list.add(result.getString("job_id"));
	             list.add(result.getString("user_id"));
	             list.add(result.getString("sequence"));
	             list.add(result.getString("duedate"));
	             list.add(result.getString("categoryId"));
	          } 

	          con.close();

	      } catch (Exception ex) {
	          Logger.getLogger(TechDetails.class.getName()).log( 
	                           Level.SEVERE, null, ex);
	      }
	          return list;
	  }


}
