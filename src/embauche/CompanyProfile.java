package embauche;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class CompanyProfile extends HttpServlet  {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String offername = request.getParameter("offername");
        String offerdesc = request.getParameter("offerdesc");
        try{
        
        //loading drivers for mysql
        Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
        HttpSession session=request.getSession();
        Integer id=(Integer)session.getAttribute("Id"); 
          Connection  con=DriverManager.getConnection
                     ("jdbc:mysql://localhost:3306/job_offer","root","");
        PreparedStatement ps=con.prepareStatement
                  ("UPDATE entreprise SET name=?, Description=? where id=?");
        ps.setString(1, name);
        ps.setString(2, description);
        ps.setLong(3, id);
        int i=ps.executeUpdate();
        PreparedStatement pst=con.prepareStatement
                ("insert into offer(name, description, id_entreprise) values(?,?,?)");
      pst.setString(1, offername);
      pst.setString(2, offerdesc);
      pst.setLong(3, id);
      pst.executeUpdate();
          if(i>0)
          {
            out.println("You have completed your profile");
          }
          String site = new String("http://localhost:8080/embauche/Company.jsp");
          response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
          response.setHeader("Location", site);
        
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
	
      }

}
