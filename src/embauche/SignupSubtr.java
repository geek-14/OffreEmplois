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

import java.sql.*;
import java.sql.PreparedStatement;
import java.io.PrintWriter;
import java.io.IOException;

public class SignupSubtr extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{PrintWriter pw = response.getWriter();
            String connectionURL = "jdbc:mysql://localhost:3306/job_offer";// newData is the database
            Connection connection= null;

            try{
            String nom = request.getParameter("name");
            String email = request.getParameter("email");  //pw.println(Nom + " "+ Prenom);
            String pass = request.getParameter("password");
            String selfdesc= request.getParameter("selfdesc");
          
            /*String confirm = request.getParameter("confirm");
if( pass==confirm){*/
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, "root", "");
            java.sql.PreparedStatement pst = connection.prepareStatement("insert into subscriber(name,email,password,selfdesc) values(?,?,?,?)");
            pst.setString(1,nom);
            pst.setString(2,email);    
            pst.setString(3,pass);
            pst.setString(4,selfdesc);
            HttpSession session=request.getSession();  
            session.setAttribute("name",nom);
            int i = pst.executeUpdate();
            if(i!=0){
            	ResultSet rs = null;
                int id = -1;
                rs = pst.executeQuery("SELECT LAST_INSERT_ID()");

                if (rs.next()) {
                    id = rs.getInt(1);
                }
                
                 
                session.setAttribute("id",id); 
                                                         
            	String site = new String("profileform.jsp");

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
            	

            