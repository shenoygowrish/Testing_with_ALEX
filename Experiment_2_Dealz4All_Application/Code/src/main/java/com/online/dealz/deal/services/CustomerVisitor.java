package com.online.dealz.deal.services;

import java.util.Date;
import java.util.List;

public class CustomerVisitor implements Visitor {


    private double discount=0.00;

    public void setListofDeals(){
    	// lIST OF Deals
    }

    public void visit(DateDealsDiscount dateDealsDiscount){
    	
    	//Discunt Logic
    }

    public double getTotalPostage() {
        return discount;
    }
}
