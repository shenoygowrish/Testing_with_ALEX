package com.online.dealz.deal.services;

import java.util.ArrayList;
import java.util.List;

import com.online.dealz.deal.services.observer.cancelDeal.DealRecordObserver;

public class ExcitingDeals implements Subject {

	private String dealName;
	List<String> customerEmail;

	private boolean available;

	private List<DealRecordObserver> listOfDealObservers = new ArrayList<DealRecordObserver>();

	public boolean isAvailable(){
		return available;
	}

	public int setAvailable(boolean available){
		int notifiedCustomers=0;
		this.available = available;
		if(available == true){
			notifiedCustomers = notifyObservers();
		}
		return  notifiedCustomers;
	}

	public String getDealName(){
		return dealName;
	}

	public void setcustomerEmail(List<String> listOfemail){
		this.customerEmail = listOfemail;
	}

	public void setDealName(String dealName){
		this.dealName = dealName;
	}

	public List<DealRecordObserver> getListOfDealObservers() {
		return listOfDealObservers;
	}

	public void setListOfDealObservers(List<DealRecordObserver> listOfDealObservers) {
		this.listOfDealObservers = listOfDealObservers;
	}

	@Override
	public void registerObserver(DealRecordObserver dealObserver) {
		// TODO Auto-generated method stub
		listOfDealObservers.add(dealObserver);
	}

	@Override
	public void removeObserver(DealRecordObserver dealObserver) {
		// TODO Auto-generated method stub
		listOfDealObservers.remove(dealObserver);
	}

	@Override
	public int notifyObservers() {
		// TODO Auto-generated method stub

		for(DealRecordObserver dealObserver : listOfDealObservers){

			for(String themail : customerEmail) {
				dealObserver.update(dealName, themail);
			}
		}

		return listOfDealObservers.size();
	}
}
