package controllers;

import org.springframework.stereotype.Component;

import model.Product;

@Component
public class FlowHandler {
	

	 
		public Product initFlow(){
			Product order=new Product();
			return order;
		}
		
		
		
}
