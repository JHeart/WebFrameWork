package service;

import java.util.HashMap;
import java.util.Map;

import model.Customer;

public class CustomerService {

	private  Map<String,Customer> customerMap;
	
	public CustomerService() {
		customerMap = new HashMap<String,Customer>();
		
		//id,password,name
		addCustomer(new Customer("id001","password1","name1"));
		addCustomer(new Customer("id002","password2","name2"));
		addCustomer(new Customer("id003","password3","name3"));
		
	}
	
	private void addCustomer(Customer customer) {
		
		customerMap.put(customer.getId(), customer);
	}
	
	public Customer findCustomer(String id, String password) {
		if(id!=null&&password!=null)
			return (customerMap.get(id.toLowerCase()));
		else return null;
	}
	
}
