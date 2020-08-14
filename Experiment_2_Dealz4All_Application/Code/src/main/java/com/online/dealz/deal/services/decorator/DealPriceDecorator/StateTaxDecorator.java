/**
 * 
 */
package com.online.dealz.deal.services.decorator.DealPriceDecorator;

/**
 * Decorator for Deal Price
 */
public class StateTaxDecorator extends DealPriceDecorator{
	public StateTaxDecorator(IDealPrice dealPrice) {
		super(dealPrice);
	}

	public double getPrice() {
		return (double) (super.getPrice()*2.5); //2.5 % State Tax on the price
	}
	
}
