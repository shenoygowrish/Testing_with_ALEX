package com.online.dealz.deal.services.decorator.DealPriceDecorator;

public class GoldMemberPrice implements IDealPrice {

	double basePrice;
	
	@Override
	public double getPrice() {
		return basePrice;
	}

	@Override
	public void setPrice(double price) {
		basePrice = price - (price *0.10); //10% off for Gold Members
	}
}
