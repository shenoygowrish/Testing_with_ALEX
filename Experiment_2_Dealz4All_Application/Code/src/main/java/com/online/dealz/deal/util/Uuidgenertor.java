package com.online.dealz.deal.util;

import java.util.UUID;

public class Uuidgenertor {

    /**
    * assume those id are 8 digs
    */
    public static String createOrderId(){
        return UUID.randomUUID().toString().replaceAll("-", "").substring(0,8);
    }

    public static String creatVoucherId(){
        int startThree = (int) (Math.random()*100);
        String voucherId = String.valueOf(startThree) +  UUID.randomUUID().toString().replaceAll("-", "").substring(0,5);
        return String.valueOf(startThree);
    }


}
