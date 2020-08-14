package com.online.dealz.deal.contract;

import com.online.dealz.deal.bean.BaseBean;

public class PreconditionImpPayment extends PreconditionImp {


    public boolean checkPreConditionForModel_FindBy(int pageNo, int pageSize){
        /**
         * for payment findby page, pageNo and pageSizeshould not smaller than 0
         */
        if (pageNo < 0 || pageSize < 0){
            return false;
        }else {
            return true;
        }
    }

}
