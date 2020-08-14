package com.online.dealz.deal.services;

import java.util.ArrayList;
import java.util.List;

public class DealCollection {

	List<Double> dealpriceList = new ArrayList<Double>();
	List<Double> statetaxList = new ArrayList<Double>();
	List<Double> luxuarytaxList = new ArrayList<Double>();
	List<Double> taxList = new ArrayList<Double>();

	public List<Double> getDealPriceList() {
		return dealpriceList;
	}
	public void setDealPriceList(List<Double> dealpriceList) {
		this.dealpriceList = dealpriceList;
	}

	public List<Double> getStateTaxList() {
		return statetaxList;
	}
	
	public List<Double> getTaxList() {
		return taxList;
	}

	public void setTaxList(List<Double> taxList) {
		this.taxList = taxList;
	}

	public void setStateTaxList(List<Double> statetaxList) {
		this.statetaxList = statetaxList;
	}

	public List<Double> getLuxuaryTaxList() {
		return luxuarytaxList;
	}

	public void setLuxuaryTaxList(List<Double> luxuarytaxList) {
		this.luxuarytaxList = luxuarytaxList;
	}
	public void cleanData() {
		dealpriceList = new ArrayList<Double>();
		statetaxList = new ArrayList<Double>();
		luxuarytaxList = new ArrayList<Double>();
	}
	
}