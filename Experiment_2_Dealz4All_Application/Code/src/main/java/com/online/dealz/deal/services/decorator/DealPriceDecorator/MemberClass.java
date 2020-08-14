package com.online.dealz.deal.services.decorator.DealPriceDecorator;

public abstract class MemberClass {
	IDealPrice BronzeMemberPrice;

	IDealPrice GoldMemberPrice;

	IDealPrice PlatinumClassPrice;

	abstract IDealPrice getDealPrice();  
	
}
