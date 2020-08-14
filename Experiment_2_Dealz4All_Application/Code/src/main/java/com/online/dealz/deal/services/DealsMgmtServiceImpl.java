package com.online.dealz.deal.services;

import java.util.List;

import com.online.dealz.deal.bean.DealsRecord;
import com.online.dealz.deal.services.observer.cancelDeal.DealRecordObserver;
import com.online.dealz.deal.services.observer.cancelDeal.Observer;

public class DealsMgmtServiceImpl implements IDealsMgmtService {
	DealsRecord deals;

	@Override
	public void deletDeal(Integer delasId) {

	}

	public List<Integer> getAllDealsID() {
		return null;

	}

	public void addDealRecord(DealsRecord record) {
		System.out.println(" :" + record);
		Observer observer = new DealRecordObserver();
		deals.attach(observer);
		deals.cancel();
	}

	@Override
	public void addDealRecord(Integer deal) {
		// TODO Auto-generated method stub
		
	}

}
