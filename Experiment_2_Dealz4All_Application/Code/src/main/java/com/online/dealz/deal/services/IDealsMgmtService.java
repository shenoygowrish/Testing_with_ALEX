package com.online.dealz.deal.services;

import java.util.List;

public interface IDealsMgmtService {
		public void addDealRecord(Integer deal);
		public void deletDeal(Integer dealsID);
		public List<Integer> getAllDealsID();
	}
