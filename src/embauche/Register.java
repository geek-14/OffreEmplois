package embauche;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Register extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        try{
        
        //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
          Connection  con=DriverManager.getConnection
                     ("jdbc:mysql://localhost:3306/job_offer","root","");
        PreparedStatement ps=con.prepareStatement
                  ("insert into entreprise(email, password) values(?,?)");
        ps.setString(1, email);
        ps.setString(2, pass);
        int i=ps.executeUpdate();
            String site = new String("http://localhost:8080/embauche/companyform.html");
            response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site);
        
          
          ResultSet rs = null;
          int id = -1;
          rs = ps.executeQuery("SELECT LAST_INSERT_ID()");

          if (rs.next()) {
              id = rs.getInt(1);
          }
          
          HttpSession session=request.getSession();  
          session.setAttribute("Id",id); 
         
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
	
      }
  }
