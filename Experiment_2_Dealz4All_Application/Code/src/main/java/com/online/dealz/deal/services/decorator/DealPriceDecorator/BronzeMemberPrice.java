package com.online.dealz.deal.services.decorator.DealPriceDecorator;

public class BronzeMemberPrice implements IDealPrice {

	double basePrice;
	
	@Override
	public double getPrice() {
		return basePrice;
	}

	@Override
	public void setPrice(double price) {
		basePrice = price - (price *0.05); //5% off for Bronze Members
	}
}
