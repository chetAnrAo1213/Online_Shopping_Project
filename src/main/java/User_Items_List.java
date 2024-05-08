import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;


@Entity
public class User_Items_List {
    
    @Id
    int cart_id;
    String email;
    
    @ElementCollection
    @JoinColumn(name = "")
    List<String> items;

	public User_Items_List() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User_Items_List(int cart_id, String email, List<String> items) {
		super();
		this.cart_id = cart_id;
		this.email = email;
		this.items = items;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<String> getItems() {
		return items;
	}

	public void setItems(List<String> items) {
		this.items = items;
	}

	
    
}
