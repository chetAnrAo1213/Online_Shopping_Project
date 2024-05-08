import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 

public class CheckOut extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public CheckOut() {
        super();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        RequestDispatcher dispatcher;
        dispatcher = req.getRequestDispatcher("Navigation.jsp");
        dispatcher.include(req, res);
        out.print("<!DOCTYPE html>");
        out.print("<html lang=\"en\">");
        out.print("<head>");
        out.print("<meta charset=\"ISO-8859-1\">");
        out.print("<title>Exit Page</title>");
        out.print("<link rel=\"icon\" href=\"https://cdn-icons-png.freepik.com/512/8754/8754557.png\">");
        out.print("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
        out.print("<style>");
        out.print(".content {");
        out.print("  display: flex;");
        out.print("  flex-direction: column;");
        out.print("  justify-content: center;");
        out.print("  align-items: center;");
        out.print("  min-height: 100vh;");
        out.print("  background-color: #f0f0f0;");
        out.print("  margin: 0;");
        out.print("  padding: 0;");
        out.print("}");
        out.print(".container1 {");
        out.print("  text-align: center;");
        out.print("  background-color: #ffffff;");
        out.print("  padding: 20px;");
        out.print("  border-radius: 10px;");
        out.print("  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);");
        out.print("  width: 50%;");
        out.print("  margin-top: 50px;");
        out.print("}");
        out.print(".success-message1 {");
        out.print("  color: green;");
        out.print("}");
        out.print("</style>");
        out.print("</head>");
        out.print("<body>");
        out.print("<div class=\"content\">");
        out.print("<div class=\"container1\">");
        out.print("<h6 class=\"success-message\"> Your Cart is Purchased Successfully!</h6>");
        out.print("<h4>Do You Want To Log Out?</h4>");
        out.print("<form method=\"post\" action=\"Exit.jsp\">");
        out.print("<button type=\"submit\" class=\"btn btn-outline-dark\">Log Out</button>");
        out.print("</form><p></p>");
        out.print("<h6 class=\"success-message1\"> You Can Also View Your Account History</h6>");
        out.print("<form method=\"post\" action=\"Activity.jsp\">");
        out.print("<button type=\"submit\" class=\"btn btn-outline-dark\">View History</button>");
        out.print("</form>");
        out.print("</div>");
        out.print("</div>");
        out.print("</body>");
        out.print("</html>");
        dispatcher = req.getRequestDispatcher("Footer.jsp");
        dispatcher.include(req, res);
    }
}
