import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User_Login_Activity")
public class User_Login_Activity {
	@Id
	int cart_Id;
	String email;
	String Login_Time;
	java.util.Date Date;
	String SessionId;
	public User_Login_Activity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User_Login_Activity(int cart_Id, String email, String login_Time, java.util.Date date, String sessionId) {
		super();
		this.cart_Id = cart_Id;
		this.email = email;
		Login_Time = login_Time;
		Date = date;
		SessionId = sessionId;
	}
	public int getCart_Id() {
		return cart_Id;
	}
	public void setCart_Id(int cart_Id) {
		this.cart_Id = cart_Id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLogin_Time() {
		return Login_Time;
	}
	public void setLogin_Time(String login_Time) {
		Login_Time = login_Time;
	}
	public java.util.Date getDate() {
		return Date;
	}
	public void setDate(java.util.Date date) {
		Date = date;
	}
	public String getSessionId() {
		return SessionId;
	}
	public void setSessionId(String sessionId) {
		SessionId = sessionId;
	}
	
	
}
