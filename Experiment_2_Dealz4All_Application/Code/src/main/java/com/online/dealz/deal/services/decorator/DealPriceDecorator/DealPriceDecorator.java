package com.online.dealz.deal.services.decorator.DealPriceDecorator;

public abstract class DealPriceDecorator implements IDealPrice {
	
	private IDealPrice dealPrice;
	double basePrice;
	
	public DealPriceDecorator(IDealPrice dealPrice) {
		this.dealPrice = dealPrice;
	}
	
	@Override
	public double getPrice() {
		
		return dealPrice.getPrice();
	}

	public void setPrice(double price) {}
}
