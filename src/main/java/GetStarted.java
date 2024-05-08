import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetStarted extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public GetStarted() {
        super();
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String a = req.getParameter("GST");
		
		if(a==null)
		{
			res.sendRedirect("index.jsp");
		}
		else
		{
			res.sendRedirect("SignIn.jsp");
		}
	}

}
