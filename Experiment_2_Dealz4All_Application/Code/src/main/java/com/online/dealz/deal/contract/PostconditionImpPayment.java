package com.online.dealz.deal.contract;

import com.online.dealz.deal.bean.PaymentBean;
import com.online.dealz.deal.util.DataValidator;

import java.util.List;

public class PostconditionImpPayment extends PostconditionImp {

    @Override
    public boolean checkPostConditionForModel_FindBy(Object returningBean,String modelName){

        /**
         * first check if returning object is in correct class
         */
        String beanName  = modelName.isEmpty()?"":modelName.replace("Model","Bean");
        String retuningBeanName = returningBean.getClass().getSimpleName();
        if (returningBean != null && !retuningBeanName.equals(beanName)){
            return false;
        }

        /**
         * secondly,
         * after class check, we could know the bean is a Payment bean
         * for payment, we should exam some key value to ensure they are filled and with correct form
         */
        if (returningBean != null ){
            PaymentBean paymentBean = (PaymentBean) returningBean;

            if(paymentBean.getValue().isEmpty()){
                return false;
            }
            if(paymentBean.getLogin().isEmpty()){
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean checkPreConditionForModel_List(Object returningList){
        if (returningList != null && !(returningList instanceof List)){
            return false;
        }
        if (returningList != null ){
            for (Object eachBean:(List)returningList) {
                PaymentBean paymentBean = (PaymentBean) eachBean;

                if(paymentBean.getValue().isEmpty()){
                    return false;
                }
                if(paymentBean.getLogin().isEmpty()){
                    return false;
                }
            }

        }
        return true;
    }
}
