package com.online.dealz.deal.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import com.online.dealz.deal.bean.CustomerBean;

public class VisitDeals<Deal> {
	double postage;
	//normal shopping cart stuff
	private ArrayList<VisitableDeals> items=new ArrayList<VisitableDeals>();
	private CustomerBean customer;
	private List<Deal> deals;


	public void setData(CustomerBean customer, List<Deal> deals){

		this.customer = customer;

		this.deals=deals;
	}

	public double calculatePostage() {

		// Postage Implementation

		return postage;
	}
}
