package embauche;

import javax.servlet.http.HttpServlet;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; 

import java.sql.PreparedStatement;
import java.io.PrintWriter;
import java.io.IOException;


public class Usersaisi extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{PrintWriter pw = response.getWriter();
            String connectionURL = "jdbc:mysql://localhost:3306/job_offer";// newData is the database
            Connection connection= null;

            try{
            
            	String school = request.getParameter("school");
            	String diploma = request.getParameter("diploma");
            	String f_studies = request.getParameter("f_studies");
            	 
            	String description = request.getParameter("description");
            	String title = request.getParameter("title");
            	String enterprise = request.getParameter("enterprise");
            	String lieu = request.getParameter("lieu");
           	 
            	String expdesc = request.getParameter("expdesc");
            	 HttpSession session=request.getSession();         
                 Integer id=(Integer)session.getAttribute("id");
            	Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(connectionURL, "root", "");                                   
                
                java.sql.PreparedStatement pst = connection.prepareStatement("insert into formation(ecole, diplome, discipline, description, id_subscriber) values(?,?,?,?,?)");
                pst.setString(1,school);
                
                pst.setString(2,diploma);
                pst.setString(3,f_studies);
                pst.setString(4,description);
                pst.setLong(5,id);
                int i = pst.executeUpdate();
                
                java.sql.PreparedStatement ps = connection.prepareStatement("insert into experience(titre, nom_entreprise, lieu, description, id_subscriber) values(?,?,?,?,?)");
                ps.setString(1,title);
                
                ps.setString(2, enterprise);
                ps.setString(3,lieu);
                ps.setString(4,expdesc);
                ps.setLong(5,id);
                int j = ps.executeUpdate();
                if(i+j!=0){
                	String site = new String("useprofile.jsp");

                	response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", site);
                  
                }
                else {
                    pw.println("failed to insert the data");          
                    }
                
}
            catch (SQLException | ClassNotFoundException e){ try {
            	throw e;
            } catch (Exception e1) {
            	e1.printStackTrace();
            }
            pw.println(e);
            }         
	}
	
}