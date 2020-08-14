package com.online.dealz.deal.services;

import com.online.dealz.deal.services.observer.cancelDeal.DealRecordObserver;

public interface Subject {
	
	public void registerObserver(DealRecordObserver dealObserver);
	public void removeObserver(DealRecordObserver dealObserver);
	public int notifyObservers();

}
