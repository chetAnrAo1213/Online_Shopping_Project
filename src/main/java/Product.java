import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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


@WebServlet("/Product")
public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Product() 
    {
        super();
    }
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		

		PrintWriter out = res.getWriter();
		HttpSession session = req.getSession();
		Bill(req,res);
		
		List<String> ui_l = new ArrayList<>();
		int cost=0,i=0,total=0,item_count=0,c=0,count=0;
	    String Items[]= {
	    		          "Fruits","Vegetables","Dairy","Spices","Cosmetics",
	    		          "DryFruits","IceCreams","Chocolates","Meat",
	    		          "GreenLeafyVegetables","Stationary","Groceries"
	    		        };
	    
     	for(i=0;i<Items.length;i++) 
	    {
		   cost=0;
		   c=0;
		   String[] selectedItems = req.getParameterValues(Items[i]);
		   out.println("&nbsp;&nbsp"+Items[i]+":-");
		   out.println("<br>");
		   if(selectedItems != null) 
		   {
			   item_count=item_count+1;			  
		    for(String j : selectedItems) 
		     {
		    	 c++;
		        String[] parts = j.split(":");
		        ui_l.add(j);		        
		        String ItemName = parts[0]; 
		        int Price = Integer.parseInt(parts[1]); 
		        cost=cost+Price ;
		        out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+c+") "+ItemName+" : "+Price);
		        out.println("<br>");
		        count++;
		     }    
		    out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
		    				+ Items[i] + " Price :-" + cost);
	    }
		   out.println("<br>");
		    out.println("___________");
		    out.println("<br>");
		total=total+cost;
	 }
	 out.println("<h6>Total Categories :-"+item_count+"</h6>");
	 out.println("<h6>Total Items :-"+count+"</h6>");
	 out.println("<h6>Total Price :-"+total+"</h6>");
	 session.setAttribute("item_count", item_count);
	 session.setAttribute("count", count);
	 session.setAttribute("total", total);
	 System.out.println(ui_l);
	 
	 try
	 {
		 
	 	  String email = (String) session.getAttribute("email");
	 	  int c_Id =(int) session.getAttribute("c_Id");
	 	 
		 SessionFactory sf = new Configuration().configure("Shopping.cfg.xml").buildSessionFactory();
		 Session ss = sf.openSession();
		 Transaction trc = ss.beginTransaction(); 
		 
		 User_Items_List uil = new User_Items_List(c_Id,email,ui_l);
		 User_Purchased_Cost upc = new User_Purchased_Cost(c_Id,item_count, count,total,email);
		 session.setAttribute("userItemsList", uil);
		 session.setAttribute("userPurchasedCost", upc);
		 
		 
		 ss.save(uil);
	 	  ss.save(upc);
	 	  
	 	  
		 trc.commit();
		 ss.close();
		 sf.close();
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	 LogOut(req, res);
    
  }
	
	public void LogOut(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	    res.setContentType("text/html");
	    PrintWriter out = res.getWriter();
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Billing Page</title>");
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
	    out.println("<button type=\"submit\" class=\"btn btn-outline-dark btn-block\">Checkout</button>");
	    out.println("</form>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</body>");
	    out.println("</html>");
	}
	
	public void Bill(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	    res.setContentType("text/html");
	    PrintWriter out = res.getWriter();
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Checkout</title>");
	    out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
	    out.println("</head>");
	    out.println("<body> ");
	    out.println("<div class=\"container\">");
	    out.println("<div class=\"row\">");
	    out.println("<div class=\"col-md-12 text-center\">");
	    out.println("<h4>Billing Page</h4>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("</body>");
	    out.println("</html>");
	}
}
