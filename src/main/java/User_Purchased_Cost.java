import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class User_Purchased_Cost {
	@Id
   int cart_id;
	
  @Column(name="Count_Categories")
    int item_count;
  
  @Column(name="Count_Items")
    int count;
   
  @Column(name="Total_Price") 
   int total;
   
   String email;

public User_Purchased_Cost() {
	super();
	// TODO Auto-generated constructor stub
}

public User_Purchased_Cost(int cart_id, int item_count, int count, int total,
		String email) {
	super();
	this.cart_id = cart_id;
	this.item_count = item_count;
	this.count = count;
	this.total = total;

	this.email = email;
}

public int getCart_id() {
	return cart_id;
}

public void setCart_id(int cart_id) {
	this.cart_id = cart_id;
}

public int getItem_count() {
	return item_count;
}

public void setItem_count(int item_count) {
	this.item_count = item_count;
}

public int getCount() {
	return count;
}

public void setCount(int count) {
	this.count = count;
}

public int getTotal() {
	return total;
}

public void setTotal(int total) {
	this.total = total;
}



public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}
 

 
}
