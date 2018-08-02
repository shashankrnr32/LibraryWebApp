import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.annotation.WebServlet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/addbook")
public class addbook extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public addbook() {
        super();
    }
    public void doGet(HttpServletRequest request,
    	      HttpServletResponse response) throws ServletException,
    	      IOException { 
    		    PrintWriter out = response.getWriter(); 
    		    
    		    String url = "jdbc:mysql://localhost:3306/"; 
    		    String dbName = "project alpha"; 
    		    String driver = "com.mysql.jdbc.Driver"; 
    		    String user = "root";  
    		    String password = "";
    		    int i=0;
    		    
    		    try { 
    		        Class.forName(driver).newInstance(); 
    		        Connection conn = DriverManager.getConnection(url+dbName, user, password); 
    		        String s1=request.getParameter("id");
    		        String s2=request.getParameter("name");
    		        String s3=request.getParameter("author");
    		        String s4=request.getParameter("publisher");
    		        String s5=request.getParameter("pubyear");
    		        String s6=request.getParameter("category");
    		        String s7=request.getParameter("link");
    		        String q="INSERT INTO `books`(`id`, `name`, `author`, `publisher`, `category`, `pubyear`, `link`, `avail`) VALUES (?,?,?,?,?,?,?,1)";
    		        PreparedStatement ps=conn.prepareStatement(q);
    		        ps.setString(1, s1);
    		        ps.setString(2, s2);
    		        ps.setString(3, s3);
    		        ps.setString(4, s4);
    		        ps.setString(6, s5);
    		        ps.setString(5, s6);
    		        ps.setString(7, s7);
    		        ps.executeUpdate();
    		        ps.close();
    		        conn.close();
    		        i=1;
    		        
    		    } catch (Exception e) { 
    		    	System.out.println("ERROR"+e);
    		    	i=0;
    		    }
    		    finally{
    		    	RequestDispatcher rd=request.getRequestDispatcher("alert.jsp");
    		    	request.setAttribute("resp",Integer.toString(i));
    		    	rd.forward(request, response);
    		    	
    		    }
   }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
