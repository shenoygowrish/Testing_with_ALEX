package com.online.dealz.deal.contract;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IPrecondition<T> {


    public boolean checkPreConditionForModel_FindBy(String inputString);

    public boolean checkPreConditionForModel_ADU(T bean);
}
