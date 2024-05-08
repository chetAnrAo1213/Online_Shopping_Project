import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Random;


import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration; 
import org.hibernate.Transaction;


public class SignInServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SignInServlet() {
        super();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        Random random = new Random();
        HttpSession session = req.getSession();
        
     	int c_Id = random.nextInt(100000);
     	String sessionId = req.getSession().getId();
     	Date date1 = new Date(System.currentTimeMillis());
     	
     	
         try 
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Shopping?characterEncoding=latin1", "root", "21KN1A05H4");
            String qry = "Select * from user_registration where User_email=? and User_Password=?";

            PreparedStatement ps = con.prepareStatement(qry);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) 
            {
                session.setAttribute("email", email);
                session.setAttribute("c_Id",c_Id);
                session.setAttribute("date1", date1);
                res.sendRedirect("BuyProducts.jsp");
            } 
            
            else 
            {
            	req.getSession().invalidate();
                res.sendRedirect("ErrorPage.jsp");
            }
            con.close();
          } 
         catch (Exception e) 
         {
            e.printStackTrace();
          }
    
    
         try
         {
         	SessionFactory sf = new Configuration().configure("Shopping.cfg.xml").buildSessionFactory();
         	Session ss = sf.openSession();
         	Transaction trx = ss.beginTransaction();
         	
         	
         	User_Login_Activity ula= new User_Login_Activity();
         	  ula.setCart_Id(c_Id);
         	  ula.setEmail(email);
         	  ula.setDate(date1);
         	 ula.setLogin_Time(LocalDateTime.now(ZoneId.of("Asia/Kolkata")).format(DateTimeFormatter.ISO_DATE_TIME)); 
         	  ula.setSessionId(sessionId);
         	  
         	 session.setAttribute("User_Login_Activity", ula);
         	  
         	 ss.save(ula);
         	trx.commit();
         	ss.close();
         	sf.close();
         	
         }
         catch(Exception e)
         {
         	e.printStackTrace();
         }    
    }
}
