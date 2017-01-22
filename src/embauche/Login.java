package embauche;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Login extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        int id=-1;
        try{

       	 //loading drivers for mysql
                Class.forName("com.mysql.jdbc.Driver");

        	 //creating connection with the database 
                Connection con=DriverManager.getConnection
               		 ("jdbc:mysql://localhost:3306/job_offer","root","");
                PreparedStatement ps =con.prepareStatement
                                    ("select * from entreprise where email=? and password=?");
                ps.setString(1, email);
                ps.setString(2, pass);
                ResultSet rs =ps.executeQuery();
                if( rs.next()){
                	 id = rs.getInt("id");
                	 out.print(id);
                	 HttpSession session=request.getSession();  
                     session.setAttribute("Id",id);
                     String site = new String("http://localhost:8080/embauche/Company.jsp");
                     response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
                     response.setHeader("Location", site);
                }
                else
                { PreparedStatement pst =con.prepareStatement
                ("select * from subscriber where email=? and password=?");
                 pst.setString(1, email);
                 pst.setString(2, pass);
                 ResultSet rst =pst.executeQuery();
                 if( rst.next()){
                     String site = new String("http://localhost:8080/embauche/useprofile.jsp");
                     response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
                     response.setHeader("Location", site);
                   }
                
                else
                {
        		RequestDispatcher st = request.getRequestDispatcher("signIn.html");
                   st.include(request, response);
                }
                
                }}catch(Exception e)
             {
                 e.printStackTrace();
             }
         
        }
    
       
} 
