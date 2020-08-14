package com.online.dealz.deal.services.decorator.DealPriceDecorator;

public class PlatinumMemberPrice implements IDealPrice {

	double basePrice;
	
	@Override
	public double getPrice() {
		return basePrice;
	}

	@Override
	public void setPrice(double price) {
		basePrice = price - (price *0.15); //15% off for Platinum Members
	}
}
