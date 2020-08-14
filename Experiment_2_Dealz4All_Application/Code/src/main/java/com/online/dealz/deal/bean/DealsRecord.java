package com.online.dealz.deal.bean;

import java.util.ArrayList;
import java.util.List;

import com.online.dealz.deal.services.observer.cancelDeal.Observer;

public class DealsRecord {
	
	private List<Observer> list = new ArrayList<Observer>();

	public void attach(Observer observer) {
		list.add(observer);
	}

	public void detach(Observer observer) {
		list.remove(observer);
	}

	public void notifyObservers() {
		for (Observer observer : list) {
			observer.update(this);
		}
	}

    public void cancel(){
    	setStatus("canceled");
        notifyObservers();
    }

	private void setStatus(String string) {
		// TODO Auto-generated method stub
		
	}
}
