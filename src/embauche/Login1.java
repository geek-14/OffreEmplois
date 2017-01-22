package embauche;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login1 extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        try{
        	Integer id;
        	Integer ids;
        Class.forName("com.mysql.jdbc.Driver");	  
        Connection con=DriverManager.getConnection
       		 ("jdbc:mysql://localhost:3306/job_offer","root","");
        PreparedStatement ps =con.prepareStatement
                            ("select * from entreprise where email=? and password=?");
        ps.setString(1, email);
        ps.setString(2, pass);
        ResultSet rs =ps.executeQuery();
        if(rs.next()) {
       	 ids =rs.getInt("id");        
        HttpSession session=request.getSession();         
        session.setAttribute("id", ids); 
        String site = new String("Profiles.jsp");
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
             String site = new String("http://localhost:8080/embauche/Opportunities.jsp");
             response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
             response.setHeader("Location", site);
           }
         else{
		RequestDispatcher st = request.getRequestDispatcher("offersignin.html");
           st.include(request, response);
         }
        }
        
     }catch(Exception e)
     {
         e.printStackTrace();
     }
    }  
}

