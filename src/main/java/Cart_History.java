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

@WebServlet("/Cart_History")
public class Cart_History extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Cart_History() {
        super();
      
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		RequestDispatcher dispatcher;
		Act(req,res);
		try
	 	  {
		
		
		HttpSession session = req.getSession();
	 	  String email = (String) session.getAttribute("email");
	 	  int c_Id =(int) session.getAttribute("c_Id");
	 	  Date date1 = (Date) session.getAttribute("date1");

	 	  int item_count=(int) session.getAttribute("item_count");
	 	  int count=(int) session.getAttribute("count");
	 	  int total=(int) session.getAttribute("total");
	 	  
	 	  
	 		  
	 		  SessionFactory sf = new Configuration().configure("Shopping.cfg.xml").buildSessionFactory();
	 		  Session ss = sf.openSession();

	 	 out.println("<h6>User Mail Id:-"+email+"</h6>");
	 	 out.println("<h6>User Cart Id:-"+c_Id+"</h6>");
	 	 out.println("<h6>User Login Time:-"+date1+"</h6>");

	 	 
	 	 out.println("<h6>Purchased Items</h6");
	 	String q1 = "from User_Items_List where cart_id = :x";

	 	 Query qry = ss.createQuery(q1);
	 	 qry.setParameter("x",c_Id);
	 	 
	 	 List<User_Items_List> its = qry.getResultList();
	 	 
	 	for (User_Items_List i : its) {
	        out.println("<ul>");
	        for (String j : i.getItems()) {
	            out.println("<li>" + j + "</li>");
	        }
	        out.println("</ul>");
	    }
	 	 
	     out.println("<h6>Total Categories :-"+item_count+"</h6>");
		 out.println("<h6>Total Items :-"+count+"</h6>");
		 out.println("<h6>Total Price :-"+total+"</h6>");
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
	
	
	public void Act(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	    res.setContentType("text/html");
	    PrintWriter out = res.getWriter();
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Cart History</title>");
	    out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
	    out.println("<style> body{ padding:12px;}</style>");
	    out.println("</head>");
	    out.println("<body> ");
	    out.println("<div class=\"container\">");
	    out.println("<div class=\"row\">");
	    out.println("<div class=\"col-md-12 text-center\">");
	    out.println("<h4>Cart History</h4>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</body>");
	    out.println("</html>");
	}
	
	public void LogOut(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	    res.setContentType("text/html");
	    PrintWriter out = res.getWriter();
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Cart History</title>");
	    out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<div class=\"container\">");
	    out.println("<div class=\"row\">");
	    out.println("<div class=\"col-md-12 text-center\">");
	    out.println("<h4>Do You Want To Check Out?</h4>");
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
