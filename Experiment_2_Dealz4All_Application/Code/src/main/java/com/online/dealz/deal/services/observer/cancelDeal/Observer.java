package com.online.dealz.deal.services.observer.cancelDeal;

import com.online.dealz.deal.bean.DealsRecord;

public interface Observer {
	/**
     * 
     * @param state    Set state, and notify customers
     */

	void update(DealsRecord dealsRecord);

	void updateDeal(DealRecordObserver dealsrecord);
}
