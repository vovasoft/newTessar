package com.vova.tessarwebserver.util;

import com.vova.tessarwebserver.domain.initdata.SelectList;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author: Vova
 * @create: date 14:03 2017/12/26
 */
@Slf4j
public class Tools {
    static SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

    public static long dateToSecByFormat(Date date) {
        if (date != null) {
            return date.getTime() / 1000;
        }
        return -1;
    }

    public static Date secToDateByFormat(long sec) throws ParseException {
        String date = sdf.format(new Date(sec * 1000));

        return sdf.parse(date);
    }

    public static long dateToSec(Date date) {
        return date.getTime() / 1000;
    }

    public static Date secToDate(long sec) {
        return new Date(sec * 1000);
    }

    /**
     * 得到本周周一
     *
     * @return yyyy-MM-dd
     */
    public static Date getMondayOfDate(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);


        int day_of_week = c.get(Calendar.DAY_OF_WEEK) - 1;
        if (day_of_week == 0)
            day_of_week = 7;
        c.add(Calendar.DATE, -day_of_week + 1);
        return c.getTime();
    }

    /**
     * 得到本周周日
     *
     * @return yyyy-MM-dd
     */
    public static Date getSundayOfDate(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);

        int day_of_week = c.get(Calendar.DAY_OF_WEEK) - 1;
        if (day_of_week == 0)
            day_of_week = 7;
        c.add(Calendar.DATE, -day_of_week + 7);
        return c.getTime();
    }

    /**
     * 得到本月第一天
     */
    public static Date getFirstOfMonth(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        c.add(Calendar.MONTH, 0);
        c.set(Calendar.DAY_OF_MONTH, 1);//设置为1号,当前日期既为本月第一天
        return c.getTime();
    }

    /**
     * 得到本月最后一天
     */
    public static Date getLastOfMonth(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DAY_OF_MONTH));
        return c.getTime();
    }

    //数字数组转字符串
    public static String numArrayToStr(int[] intarr) {
        String res = "";
        for (Object i : intarr) {
            res = res + i + ",";
        }
        return res.substring(0, res.length() - 1);
    }


    //字符转转数字数组
    public static int[] strToNumArray(String str, String split) {
        String[] subStrs = str!=null?str.split(split):null;
        int length = subStrs.length;
        int[] res = new int[length];
        for (int i = 0; i < length; i++) {
            res[i] = new Integer(subStrs[i]);
        }
        return res;
    }
    //字符转转字符串数组
    public static String[] strToStrArray(String str, String split) {
        String[] subStrs = str!=null?str.split(split):null;
        int length = subStrs.length;
        String[] res = new String[length];
        for (int i = 0; i < length; i++) {
            res[i] = new String(subStrs[i]);
        }
        return res;
    }

    //数字数组转字符串百分比
    public static String[] strToNumArrayScale(String str, String split,float f) {
        DecimalFormat decimalFormat=new DecimalFormat("00.00");
        String[] subStrs = str!=null?str.split(split):null;
        int length = subStrs.length;
        String[] res = new String[length];
        for (int i = 0; i < length; i++) {
            float r = new Integer(subStrs[i]) /(f!=0?f:1)*100;
            res[i] = r==100?"100.00%":decimalFormat.format(r)+"%";
        }
        return res;
    }

    //float类型转字符串
    public static  String floatToScaleStr(float f) {
        if (f>=1){
            return "100.00%";
        }
        DecimalFormat decimalFormat=new DecimalFormat("00.00");
        String res = decimalFormat.format(f*100);
        return res+"%";
    }

//    @Test
//    public void fun(){
//        System.out.println(floatToScaleStr((float) 1.0*100)+"%");
//    }
    //合并2个字符串，前端需求
    public static String[] combine2Str(String[] s1,String[] s2){
        int l1=s1.length;
        if (l1 != s2.length) {
            return null;
        }
        int j=0;
        String[] res = new String[2*l1];
        for (int i=0;i<l1;i++,j++){
              res[j++]=s1[i];
              res[j]=s2[i];
        }
        return res;
    }

    /**
     * 计算两个日期之间的间隔，单位是日，周，月
     */

    public static int countTwoDateSpace(Date dStart, Date dEnd, Class clazz) {
        String clazzName = clazz.getSimpleName();
        int res = 0;
        Calendar cRegister = Calendar.getInstance();
        Calendar cLogin = Calendar.getInstance();
        if (clazzName.equals("StayDay")) {

            cRegister.setTime(dStart);
            cLogin.setTime(dEnd);

            while (cRegister.before(cLogin)) {
                res++;
                cRegister.add(Calendar.DAY_OF_YEAR, 1);
            }
        } else if (clazzName.equals("StayWeek")) {
            cRegister = Calendar.getInstance();
            cRegister.setTime(dStart);

            cLogin = Calendar.getInstance();
            cLogin.setTime(dEnd);

            while (cRegister.before(cLogin)) {
                res++;
                cRegister.add(Calendar.WEEK_OF_YEAR, 1);
            }
        } else if (clazzName.equals("StayMon")) {
            cRegister = Calendar.getInstance();
            cRegister.setTime(dStart);
            cLogin = Calendar.getInstance();
            cLogin.setTime(dEnd);

            while (cRegister.before(cLogin)) {
                res++;
                cRegister.add(Calendar.MONTH, 1);
            }
        }
        return res;
    }

    //去重
    public static List<String> checkContain(List<SelectList> idList, List<String> newStr, boolean isAdd){
        if (idList == null) {
            return newStr;
        }
        for (SelectList selectList : idList) {
            String name = selectList.getName();
            if (newStr.contains(name) && (boolean) isAdd){ //增加的时候需要判断数据库是否有，如果以存在，则remove
                newStr.remove(name);
            }
        }
        return newStr;
    }
    
    //create sub。。1.。2 keywords
    public static String createKeyWords(String[] strs){
        int len = strs.length;
        if (len == 0 || strs[0]=="") {
            return "";
        }else{
            String res = "";
            for (int i=0;i<len;i++){
                res+="_"+strs[i];
            }
            return res;
        }
    }

    public static String funHTTP(String url){
        String result = "";
        BufferedReader in = null;
        try {
            String urlNameString =url;
            URL realUrl = new URL(urlNameString);
            // 打开和URL之间的连接
            URLConnection connection = realUrl.openConnection();
            // 设置通用的请求属性
            connection.setRequestProperty("accept", "*/*");
            connection.setRequestProperty("connection", "Keep-Alive");
            connection.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            // 建立实际的连接
            connection.connect();
            // 获取所有响应头字段
            Map<String, List<String>> map = connection.getHeaderFields();
            // 遍历所有的响应头字段
            for (String key : map.keySet()) {
                System.out.println(key + "--->" + map.get(key));
            }
            // 定义 BufferedReader输入流来读取URL的响应
            in = new BufferedReader(new InputStreamReader(
                    connection.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
            System.out.println(result);
            return result;
        } catch (Exception e) {
            System.out.println("发送GET请求出现异常！" + e);
            e.printStackTrace();
        }
        // 使用finally块来关闭输入流
        finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return "";
    }

    public static class Msg<T> {

        /*错误码*/
        private Integer code;

        /*提示信息 */
        private String msg;

        /*具体内容*/
        private  T data;

        public Integer getCode() {
            return code;
        }

        public void setCode(Integer code) {
            this.code = code;
        }

        public String getMsg() {
            return msg;
        }

        public void setMsg(String msg) {
            this.msg = msg;
        }

        public T getData() {
            return data;
        }

        public void setData(T data) {
            this.data = data;
        }
    }

    public static Msg success(Object object){
        Msg msg=new Msg();
        msg.setCode(200);
        msg.setMsg("请求成功");
        msg.setData(object);
        return msg;
    }
    public static Msg success(){
        return success(null);
    }

    public static Msg error(Integer code,String resultmsg){
        Msg msg=new Msg();
        msg.setCode(code);
        msg.setMsg(resultmsg);
        return msg;
    }
}
