package com.online.dealz.deal.contract;

import com.online.dealz.deal.bean.BaseBean;

import java.util.List;


public class PostconditionImp implements IPostcondition<BaseBean> {

    /**
     *  Notice :
     *  modelName does not include package name.
     *  example modelName: loginModel,PaymentModel,etc
     */
    public boolean checkPostConditionForModel_FindBy(Object returningBean,String modelName){
        String beanName  = modelName.isEmpty()?"":modelName.replace("Model","Bean");
        String retuningBeanName = returningBean.getClass().getSimpleName();
        if (returningBean != null && !retuningBeanName.equals(beanName)){
            return false;
        }
        return true;
    }

    public boolean checkPreConditionForModel_List(Object returningList){
        if (returningList != null && !(returningList instanceof List)){
            return false;
        }
        return true;
    }

}
