package controllers;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


import model.Customer;
import DAO.customerServices;
import DAO.productServices;

@EnableWebMvc
@Controller

@RequestMapping("/customer")
public class SignUpController {

	@Autowired
	  public customerServices customerService;
	
	@Qualifier(value="customerService")
public void setPersonService(customerServices cs){
    this.customerService = cs;
}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String addCustomer(@Valid @ModelAttribute ("customer") Customer c, BindingResult result) {

		if (result.hasErrors()) {
			return "Register";
		} else {
			
			  
			 if(c.getCustid() == 0){
		          //new person, add it
				System.out.println("data is getting inserted");
		          this.customerService.addCustomer(c);
		          addCustomerDataToUsers(c);
		          System.out.println("data inserted successfully");
		      }else{
		          //existing person, call update
		          this.customerService.updateCustomer(c);
		      }
			System.out.println("not inserting data");             
			
			  
			return "login";
		}

	}

	@RequestMapping(method = RequestMethod.GET)
	public String displayCustomerForm(ModelMap model) {

		model.addAttribute("customer", new Customer());
    	return "Register";
	}
	
	
	public void addCustomerDataToUsers(Customer c){
	
		
		try{
			System.out.println(" addCustomerDataToUsers start");
			
			Driver d = new org.h2.Driver();
			
			DriverManager.registerDriver(d);
			
			Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
			
			PreparedStatement st =  con.prepareStatement("insert into users values(?,?,?)");
			st.setString(1, c.getName());
			st.setString(2, c.getPassword());
			st.setInt(3, 1);
			st.execute();
			
			Statement st2 = con.createStatement();
			ResultSet rs = st2.executeQuery("SELECT max(user_role_id) FROM USER_ROLES");
			rs.next();
			int id = rs.getInt(1);
			
			PreparedStatement st1 = con.prepareStatement("insert into user_roles values(?,?,?) ");
			st1.setInt(1, id+1);
			st1.setString(2, c.getName());
			st1.setString(3, "ROLE_USER");
			st1.execute();
			
			System.out.println(" addCustomerDataToUsers end ");
			
			con.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
	}
	
}
