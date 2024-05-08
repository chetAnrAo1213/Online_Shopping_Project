

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.cfg.Configuration;


@WebServlet("/User_Complete_History")
public class User_Complete_History extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
   
    public User_Complete_History() 
    {
        super();
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		RequestDispatcher dispatcher;
		PrintWriter out = res.getWriter();
		Act(req,res);
		try
		{
		
		HttpSession session = req.getSession();
		 String email = (String) session.getAttribute("email");
		 int c_Id =(int) session.getAttribute("c_Id");
		
			SessionFactory sf = new Configuration().configure("Shopping.cfg.xml").buildSessionFactory();
			Session ss = sf.openSession();
			  String q1 = "from User_Login_Activity where email=:x";
			  Query qry1 = ss.createQuery(q1);
			 	 qry1.setParameter("x",email);
			 	List<User_Login_Activity> ula = qry1.getResultList();
			 	 
			 	
			 	for (User_Login_Activity i : ula) 
			 	{
			 	    out.println("<h6> User Logged-In Date :-"+(Date)i.getDate());
			 	    out.println("<h6> User Session Id :-"+i.getSessionId());
			 	    out.println("<h6> User Cart Id :-  "+i.getCart_Id());
			 	    out.println("<br>");
			 	   out.println("<h6> User Pruchased Items :-");
			 	    String q2 = "from User_Items_List where cart_id = :x";
			 	    Query qry2 = ss.createQuery(q2);
			 	    qry2.setParameter("x", i.getCart_Id());
			 	    List<User_Items_List> uil = qry2.getResultList();	
			 	    
			 	    
			 	   for (User_Items_List j : uil) {
				        out.println("<ul>");
				        for (String k : j.getItems()) {
				            out.println("<li>" + k + "</li>");
				        }
				        out.println("</ul>");
				    }
			 	   
			 	   out.println("_________________________________");
			 	}

			ss.close();
			sf.close();
			
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
			res.sendRedirect("ErrorPage.jsp");
		}
		LogOut(req,res);
		dispatcher = req.getRequestDispatcher("Footer.jsp");
        dispatcher.include(req, res);
	}
	public void Act(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
	    res.setContentType("text/html");
	    PrintWriter out = res.getWriter();
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Account History</title>");
	    out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
	    out.println("<style> body{ padding:12px;}</style>");
	    out.println("</head>");
	    out.println("<body> ");
	    out.println("<div class=\"container\">");
	    out.println("<div class=\"row\">");
	    out.println("<div class=\"col-md-12 text-center\">");
	    out.println("<h4>Complete Cart History</h4>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</body>");
	    out.println("</html>");
	}
	
	public void LogOut(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
	    res.setContentType("text/html");
	    PrintWriter out = res.getWriter();
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Account History</title>");
	    out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<div class=\"container\">");
	    out.println("<div class=\"row\">");
	    out.println("<div class=\"col-md-12 text-center\">");
	    out.println("<h6>Done With Checking your History?</h6>");
	    out.println("<h4>Do You Want To Log Out?</h4>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("<div class=\"row justify-content-center\">");
	    out.println("<div class=\"col-md-4\">"); 
	    out.println("<form method=\"post\" action=\"CheckOut\">");
	    out.println("<button type=\"submit\" class=\"btn btn-outline-dark btn-block\">LogOut</button>");
	    out.println("</form>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</body>");
	    out.println("</html>");
	}

}
