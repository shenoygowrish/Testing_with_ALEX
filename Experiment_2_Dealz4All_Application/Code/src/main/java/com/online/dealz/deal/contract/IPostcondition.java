package com.online.dealz.deal.contract;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public interface IPostcondition<T> {

    /**
     * for findBy method, returning object can be null or a specify bean
     * @param returningBean
     * @param modelName
     * @return
     */

    public boolean checkPostConditionForModel_FindBy(Object returningBean, String modelName);

    /**
     * for list and search method, retuning object should be null or a list of specify beans
     * @param returningList
     * @return
     */
    public boolean checkPreConditionForModel_List(Object returningList);

}
