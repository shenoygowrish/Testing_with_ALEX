package com.online.dealz.deal.services.decorator.DealPriceDecorator;

/**
 * Decorator for Deal Price
 */
public class LuxuaryTaxDecorator extends DealPriceDecorator{
	public LuxuaryTaxDecorator(IDealPrice dealPrice) {
		super(dealPrice);
	}

	public double getPrice() {
		return (double) (super.getPrice()*1.25); //1.25 % Luxuary Tax on the price
	}
	
}