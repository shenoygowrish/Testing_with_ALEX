package com.online.dealz.deal.services.decorator.DealPriceDecorator;

public class MemberClassFactory extends MemberClass{
	
	IDealPrice BronzeMemberPrice;
	
	IDealPrice GoldMemberPrice;
	
	IDealPrice PlatinumClassPrice;
	
	public IDealPrice getDealPrice(String MemberclassRequirement) {
		if(MemberclassRequirement.equals("bronze")) {
			return BronzeMemberPrice;
		}
		else if(MemberclassRequirement.equals("gold")) {
			return GoldMemberPrice;
		}
		else if(MemberclassRequirement.equals("platinum")){
			return PlatinumClassPrice;
		}
		return BronzeMemberPrice;
	}
	
	public IDealPrice getDealPrice() {
		return BronzeMemberPrice;
	}
}
