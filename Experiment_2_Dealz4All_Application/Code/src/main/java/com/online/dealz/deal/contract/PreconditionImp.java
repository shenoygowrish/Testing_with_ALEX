package com.online.dealz.deal.contract;

import com.online.dealz.deal.bean.BaseBean;
import com.online.dealz.deal.util.DataValidator;




public class PreconditionImp implements IPrecondition<BaseBean>{

    public boolean checkPreConditionForModel_FindBy(String inputString){
        //basically, the input of find by should not be empty
        //further business requirement could be realized by subclass and overwrite
        //Use payment for example
        if (inputString.isEmpty() || inputString.equals("")){
            return false;
        }else {
            return true;
        }
    }

    public boolean checkPreConditionForModel_ADU(BaseBean baseBean){
        // for same reason,bean in add/delete/update should not be null as well
        if (baseBean == null ){
            return false;
        }else {
            return true;
        }
    }
}
