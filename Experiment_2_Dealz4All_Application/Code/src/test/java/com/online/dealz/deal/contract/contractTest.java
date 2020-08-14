package com.online.dealz.deal.contract;

import com.online.dealz.deal.bean.PaymentBean;
import com.online.dealz.deal.model.PaymentModel;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.LinkedList;
import java.util.List;

public class contractTest {

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void testPreCondition() {
        PreconditionImp preCondition = new PreconditionImp();
        boolean re = preCondition.checkPreConditionForModel_FindBy("id");
        System.out.println("re is :"+re);
    }

    @Test
    public void testPostCondition() {
        PostconditionImp postcondition  = new PostconditionImp();
        PaymentBean testBean = new PaymentBean();
        PaymentModel testModel = new PaymentModel();
        List<String> returnList = new LinkedList<String>();
        returnList.add("a");
        boolean f = postcondition.checkPostConditionForModel_FindBy(testBean,testModel.getClass().getSimpleName());
        boolean list = postcondition.checkPreConditionForModel_List(returnList);
        System.out.println("f is :"+f+"\n");
        System.out.println("list is :"+f+"\n");
    }



}