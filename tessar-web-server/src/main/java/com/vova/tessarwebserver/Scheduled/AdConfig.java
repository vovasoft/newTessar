package com.vova.tessarwebserver.Scheduled;

import org.springframework.context.annotation.Configuration;

/**
 * @author: Vova
 * @create: date 12:03 2018/1/24
 */
@Configuration
public class AdConfig {
    public static final String ACCESS_TOKEN = "EAAYh0VPHFxYBAIsHe7mkLBv27a4z4aKSQKusGATuZCtu2dRIPHf5chmK33jhOQpxMJtBUy94K7yoH7MkgFwnxfbKefHy7RJcSCSVHAFZAPsr4TxOUZADvFaD5Jbt5a1Q9PBxxR3uvC7qTGVrUmuX2CbI3TisZBr6J9HONFiXElR4PKv6zGBz";
    public static final String ACCOUNT_ID = "act_1464816216928066";
    public static final String BASEURL="https://graph.facebook.com/v2.11/";
    public static final String APP="/insights?";

//https://graph.facebook.com/v2.11/
// act_1464816216928066/insights?access_token=EAAYh0VPHFxYBAIsHe7mkLBv27a4z4aKSQKusGATuZCtu2dRIPHf5chmK33jhOQpxMJtBUy94K7yoH7MkgFwnxfbKefHy7RJcSCSVHAFZAPsr4TxOUZADvFaD5Jbt5a1Q9PBxxR3uvC7qTGVrUmuX2CbI3TisZBr6J9HONFiXElR4PKv6zGBz&time_range={"since":"2017-12-15","until":"2017-12-31"}&fields=adset_name


    //fields = ????
    public static final String ACCOUNT_CURRENCY="account_currency";
    public static final String ACCOUNT_NAME="account_name";
    public static final String AD_ID="ad_id";
    public static final String AD_NAME="ad_name";
    public static final String ADSET_ID="adset_id";
    public static final String ADSET_NAME="adset_name";
    public static final String COMPAIGN_ID="campaign_id";
    public static final String COMPAIGN_NAME="campaign_name";
    public static final String CLICKS="clicks";
    public static final String CTR="ctr";
    public static final String DATE_START="date_start";
    public static final String DATE_STOP="date_stop";
    public static final String IMPRESSIONS="impressions";
    public static final String SPEND="spend";
    public static final String TOTAL_ACTION_VALUE="total_action_value";
    public static final String ACTION_VALUES="action_values";


    public static final String ALLINONE=ACCOUNT_CURRENCY+","+ACCOUNT_NAME+","+AD_ID+","+
            AD_NAME+","+ADSET_ID+","+ADSET_NAME+","+COMPAIGN_ID+","+COMPAIGN_NAME+","+CLICKS+","+CTR+","+DATE_START+","+
            DATE_STOP+","+IMPRESSIONS+","+SPEND+","+TOTAL_ACTION_VALUE+","+ACTION_VALUES;     //单次链接点击的平均费用。
}
