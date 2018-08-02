import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;

import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/studadd")
public class studadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public studadd() {
        super();
    }
    public void doGet(HttpServletRequest request,
    	      HttpServletResponse response) throws ServletException,
    	      IOException {
    		     
    		    int i=0;
    		    String url = "jdbc:mysql://localhost:3306/"; 
    		    String dbName = "project alpha"; 
    		    String driver = "com.mysql.jdbc.Driver"; 
    		    String user = "root";  
    		    String password = ""; 
    		    
    		    try { 
    		        Class.forName(driver).newInstance(); 
    		        Connection conn = DriverManager.getConnection(url+dbName, user, password); 
    		        String s1=request.getParameter("sid").toUpperCase();
    		        String s2=request.getParameter("sname");
    		        
    		        String q="INSERT INTO `sdb`(`sid`, `sname`, `book`, `idate`, `rdate`, `flag`) VALUES(?,?,0,CURRENT_DATE,DATE_ADD(CURRENT_DATE,INTERVAL 14 DAY),1);";
    		        PreparedStatement ps=conn.prepareStatement(q);
    		        ps.setString(1, s1);
    		        ps.setString(2, s2);
    		        
    		        ps.executeUpdate();
    		        ps.close();
    		        conn.close();
    		        i=2;
    		        conn.close();
    		    } catch (Exception e) { 
    		    	System.out.println("ERROR"+e);
    		    	i=0;
    		    }
    		    finally{
    		    	RequestDispatcher rd=request.getRequestDispatcher("alert.jsp");
    		    	request.setAttribute("resp", Integer.toString(i));
    		    	rd.forward(request, response);
    		    	
    		    }
    	  }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
