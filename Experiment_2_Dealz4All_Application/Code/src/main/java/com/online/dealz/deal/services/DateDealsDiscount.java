package com.online.dealz.deal.services;

import java.util.Date;

public class DateDealsDiscount implements VisitableDeals {
    private Date date;
    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
