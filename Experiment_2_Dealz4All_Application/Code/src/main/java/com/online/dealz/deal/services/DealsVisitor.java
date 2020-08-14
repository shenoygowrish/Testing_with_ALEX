package com.online.dealz.deal.services;


import com.online.dealz.deal.bean.CustomerBean;



public class DealsVisitor extends CustomerBean {


	private double discount;
	private long ID;

	public void setDiscount(CustomerBean customer){
		setID(customer.getId());

		//Set discount for new visitor
	}

	public double getDiscount() { 
		return discount; 
	}

	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}


}

