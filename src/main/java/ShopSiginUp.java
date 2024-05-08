import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

@WebServlet("/ShopSiginUp.java")
public class ShopSiginUp extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
   
    public ShopSiginUp() {
        super();
        
    }

    
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	RequestDispatcher dispatcher;
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        if(email.equals(null) || password.equals(null))
        {
            res.sendRedirect("SignUp.jsp");
        }
        
        else if (userExists(req, res)) {
            
            
            return; 
        }
        
        else {
        try
        {
            HttpSession session = req.getSession();   
            SessionFactory sf = new Configuration().configure("Shopping.cfg.xml").buildSessionFactory();
            Session ss = sf.openSession();
            Transaction trx = ss.beginTransaction();
            UserRegistration urs = new UserRegistration(email,password);
            session.setAttribute("UserRegistration", urs);
            
            ss.save(urs);
              trx.commit();
              ss.close();
              sf.close();
              res.sendRedirect("ResgisterSucess.jsp");

            }
            catch(Exception e)
            {
             e.printStackTrace();
           }
        
        }
        
        dispatcher = req.getRequestDispatcher("Footer.jsp");
        dispatcher.include(req, res);
    }
    
    private boolean userExists(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        int count = 0;
        try {
            String email = req.getParameter("email");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Shopping?characterEncoding=latin1", "root", "21KN1A05H4");
            String qry = "Select * from user_registration where User_email=?";

            PreparedStatement ps = con.prepareStatement(qry);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (count != 0) {
        	out.print("<!DOCTYPE html>");
        	out.print("<html lang=\"en\">");
        	out.print("<head>");
        	out.print("<meta charset=\"ISO-8859-1\">");
        	out.print("<title>User Exists Page</title>");
        	out.print("<link rel=\"icon\" href=\"https://cdn-icons-png.freepik.com/512/8754/8754557.png\">");
        	out.print("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
        	out.print("<style>");
        	out.print("html, body {");
        	out.print("    height: 100%;");
        	out.print("}");

        	out.print("body {");
        	out.print("    display: flex;");
        	out.print("    flex-direction: column;");
        	out.print("    justify-content: center;");
        	out.print("    align-items: center;");
        	out.print("    background-color: #f0f0f0;");
        	out.print("    margin: 0;");
        	out.print("    padding: 0;");
        	out.print("}");

        	out.print(".container1 {");
        	out.print("    text-align: center;");
        	out.print("    background-color: #ffffff;");
        	out.print("    padding: 20px;");
        	out.print("    border-radius: 10px;");
        	out.print("    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);");
        	out.print("    width: 50%;");
        	out.print("}");

        	out.print(".success-message {");
        	out.print("    color: red;");
        	out.print("}");
        	out.print("</style>");
        	out.print("</head>");
        	out.print("<body>");
        	out.print("<div class=\"container1\">");
        	out.print("<h6 class=\"success-message\">We Think There is An User With This Same Account!</h6>");
        	out.print("<h6>Please Try Again!!</h6>");
        	out.print("<form method=\"post\" action=\"SignUp.jsp\">");
        	out.print("<button type=\"submit\" class=\"btn btn-outline-info\">Try Again</button>");
        	out.print("</form>");
        	out.print("</div>");
        	out.print("</body>");
        	out.print("<footer>");
        	out.print("</footer>");
        	out.print("</html>");

            return true;
        }

        return false; 
    }

}
