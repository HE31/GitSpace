package com.zlzkj.app.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
 
/**
 * @author chen
 *
 */
public class GetDate {
     
    /**
     * ��
     */
    public final static int INTERVAL_DAY = 1;
    /**
     * ��
     */
    public final static int INTERVAL_WEEK = 2;
    /**
     * ��
     */
    public final static int INTERVAL_MONTH = 3;
    /**
     * ��
     */
    public final static int INTERVAL_YEAR = 4;
    /**
     * Сʱ
     */
    public final static int INTERVAL_HOUR = 5;
    /**
     * ����
     */
    public final static int INTERVAL_MINUTE = 6;
    /**
     * ��
     */
    public final static int INTERVAL_SECOND = 7;   
     
    /**
     * date = 1901-01-01
     */
    public final static Date tempDate=new Date(new Long("-2177481952000"));;
 
    /**
     * �����Ƿ��ǵ���
     *
     * @param date - ĳһ����
     * @return true-����, false-����
     */
    @SuppressWarnings("deprecation")
    public static boolean isToday(Date date) {
        Date now = new Date();
        boolean result = true;
        result &= date.getYear()==now.getYear();
        result &= date.getMonth()==now.getMonth();
        result &= date.getDate()==now.getDate();
        return result;
    }
 
    /**
     * �������������ȡ����
     *
     * @param date1
     * @param date2
     * @return
     */
    public static long DaysBetween(Date date1, Date date2) {
        if (date2 == null)
            date2 = new Date();
        long day = (date2.getTime() - date1.getTime()) / (24 * 60 * 60 * 1000);
        return day;
    }
 
    /**
     * �Ƚ��������� if date1<=date2 return true
     *
     * @param date1
     * @param date2
     * @return
     */
    public static boolean compareDate(String date1, String date2) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date d1 = format.parse(date1);
            Date d2 = format.parse(date2);
            return !d1.after(d2);
        } catch (ParseException e) {
            e.printStackTrace();
            return false;
        }
    }
 
    /**
     * �ַ���ת����������
     *
     * @param date
     * @param dateFormat
     * @return
     */
    public static Date dateFormat(String date, String dateFormat) {
        if (date == null)
            return null;
        SimpleDateFormat format = new SimpleDateFormat(dateFormat);
        if (date != null) {
            try {
                return format.parse(date);
            } catch (Exception ex) {
            }
        }
        return null;
    }
 
     
    /**
     * ʹ��Ĭ�ϸ�ʽ yyyy-MM-dd HH:mm:ss
     * @author Robin Chang
     * @param date
     * @return
     */
    public static Date dateFormat(String date)
    {
        return dateFormat(date,"yyyy-MM-dd HH:mm:ss");
    }
 
    /**
     * ������ת�����ַ�
     *
     * @param date
     * @param dateFormat
     * @return
     */
    public static String dateFormat(Date date, String dateFormat) {
        if (date == null)
            return "";
        SimpleDateFormat format = new SimpleDateFormat(dateFormat);
        if (date != null) {
            return format.format(date);
        }
        return "";
    }
     
    /**
     * �����������ӱ������ԣ��־���1900Ϊ���ܶ�Ӧֵ���������1900����ݣ����������
     *
     * @param date
     * @param dateFormat
     * @return ��������ʾ1981-12-01��������ʾ`12-01
     */
    public static String birthdayFormat(Date date) {
        if (date == null)
            return "";
        SimpleDateFormat format = null;
        if(date.before(tempDate)) {
            format = new SimpleDateFormat("MM-dd");
        }else {
            format = new SimpleDateFormat("yyyy-MM-dd");      
        }
        if (date != null) {
            return format.format(date);
        }
        return "";
    }
     
    /**
     * ʹ��Ĭ�ϸ�ʽ yyyy-MM-dd HH:mm:ss
     * @param date
     * @return
     */
    public static String dateFormat(Date date)
    {
        return dateFormat(date,"yyyy-MM-dd HH:mm:ss");
    }
     
 
    public static boolean isExpiredDay(Date date1) {
        long day = (new Date().getTime() - date1.getTime()) / (24 * 60 * 60 * 1000);
        if (day >= 1)
            return true;
        else
            return false;
    }
 
    public static Date getYesterday() {
        Date date = new Date();
        long time = (date.getTime() / 1000) - 60 * 60 * 24;
        date.setTime(time * 1000);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            date = format.parse(format.format(date));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return date;
    }
 
    public static Date getWeekAgo() {
        Date date = new Date();
        long time = (date.getTime() / 1000) - 7 * 60 * 60 * 24;
        date.setTime(time * 1000);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            date = format.parse(format.format(date));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return date;
    }
 
    public static String getDaysAgo(int interval) {
        Date date = new Date();
        long time = (date.getTime() / 1000) - interval * 60 * 60 * 24;
        date.setTime(time * 1000);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            return format.format(date);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return "";
    }
 
    public static Date getTomorrow() {
        Date date = new Date();
        long time = (date.getTime() / 1000) + 60 * 60 * 24;
        date.setTime(time * 1000);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            date = format.parse(format.format(date));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return date;
    }
 
     
 
    public static Date getBeforeDate(String range) {
        Calendar today = Calendar.getInstance();
        if ("week".equalsIgnoreCase(range))
            today.add(Calendar.WEEK_OF_MONTH, -1);
        else if ("month".equalsIgnoreCase(range))
            today.add(Calendar.MONTH, -1);
        else
            today.clear();
        return today.getTime();
    }
 
    public static Date getThisWeekStartTime() {
        Calendar today = Calendar.getInstance();
        today.set(Calendar.DAY_OF_WEEK, today.getFirstDayOfWeek());
        Calendar weekFirstDay = Calendar.getInstance();
        weekFirstDay.clear();
        weekFirstDay.set(Calendar.YEAR, today.get(Calendar.YEAR));
        weekFirstDay.set(Calendar.MONTH, today.get(Calendar.MONTH));
        weekFirstDay.set(Calendar.DATE, today.get(Calendar.DATE));
        return weekFirstDay.getTime();
    }
 
    public static String getToday(String format) {
        String result = "";
        try {
            Date today = new Date();
            SimpleDateFormat simpleFormat = new SimpleDateFormat(format);
            result = simpleFormat.format(today);
        } catch (Exception e) {
        }
        return result;
    }
 
    public static Date getStartDay(int year, int month) {
        Calendar today = Calendar.getInstance();
        today.clear();
        today.set(Calendar.YEAR, year);
        today.set(Calendar.MONTH, month - 1);
        today.set(Calendar.DAY_OF_MONTH, 1);
        return today.getTime();
    }
 
    public static List<Integer> getBeforeYearList(int before) {
        Calendar today = Calendar.getInstance();
        int theYear = today.get(Calendar.YEAR);
        List<Integer> list = new ArrayList<Integer>();
        for (int i = before; i >= 0; i--)
            list.add(theYear - i);
 
        return list;
    }
     
    /**
     * ����ʱ��
     * @param interval [INTERVAL_DAY,INTERVAL_WEEK,INTERVAL_MONTH,INTERVAL_YEAR,INTERVAL_HOUR,INTERVAL_MINUTE]
     * @param date
     * @param n ����Ϊ����
     * @return
     */
    public static Date dateAdd(int interval,Date date,int n)
    {
        long time = (date.getTime() / 1000); //��λ��
        switch(interval)
        {
            case INTERVAL_DAY:
                time = time + n * 86400;//60 * 60 * 24;
                break;
            case INTERVAL_WEEK:
                time = time + n * 604800;//60 * 60 * 24 * 7;
                break;
            case INTERVAL_MONTH:
                time = time + n * 2678400;//60 * 60 * 24 * 31;
                break;
            case INTERVAL_YEAR:
                time = time + n * 31536000;//60 * 60 * 24 * 365;
                break;
            case INTERVAL_HOUR:
                time = time + n * 3600;//60 * 60 ;
                break;
            case INTERVAL_MINUTE:
                time = time + n * 60;
                break;
            case INTERVAL_SECOND:
                time = time + n;
                break;
            default:
        }
         
        Date result = new Date();
        result.setTime(time * 1000);
        return result;
    }
     
    /**
     * ��������ʱ����
     * @param interval [INTERVAL_DAY,INTERVAL_WEEK,INTERVAL_MONTH,INTERVAL_YEAR,INTERVAL_HOUR,INTERVAL_MINUTE]
     * @param begin
     * @param end
     * @return
     */
    public static int dateDiff(int interval,Date begin,Date end)
    {
        long beginTime = (begin.getTime() / 1000); //��λ����
        long endTime = (end.getTime() / 1000); //��λ: ��
        long tmp = 0;
        if (endTime == beginTime)
        {
            return 0;
        }
 
        //ȷ��endTime ���� beginTime ����ʱ������ ���� ��ʼʱ������
        if (endTime < beginTime)
        {
            tmp = beginTime;
            beginTime = endTime;
            endTime = tmp;
        }
         
        long intervalTime = endTime - beginTime;
        long result = 0;
        switch(interval)
        {
            case INTERVAL_DAY:
                result = intervalTime / 86400;//60 * 60 * 24;
                break;
            case INTERVAL_WEEK:
                result = intervalTime / 604800;//60 * 60 * 24 * 7;
                break;
            case INTERVAL_MONTH:
                result = intervalTime / 2678400;//60 * 60 * 24 * 31;
                break;
            case INTERVAL_YEAR:
                result = intervalTime / 31536000;//60 * 60 * 24 * 365;
                break;
            case INTERVAL_HOUR:
                result = intervalTime / 3600;//60 * 60 ;
                break;
            case INTERVAL_MINUTE:
                result = intervalTime / 60;
                break;
            case INTERVAL_SECOND:
                result = intervalTime / 1;
                break;
            default:
        }      
         
        //����
        if (tmp > 0)
        {
            result = 0 - result;
        }
        return (int) result;
    }  
     
    /**
     * ��ǰ���
     * @return
     */
    public static int getTodayYear()
    {
        int yyyy = Integer.parseInt(dateFormat(new Date(),"yyyy"));
        return yyyy;
    }
         
    public static Date getNow()
    {
        return new Date();
    }
     
    /**
     * �����ڸ�ʽΪrss��ʽ���ݵ��ַ�
     * @param date
     * @return
     */
    public static String dateFormatRss(Date date)
    {
        if (date != null)
        {
            return dateFormat(date,"E, d MMM yyyy H:mm:ss") + " GMT";
        }
        return "";
    }
     
    /**
     * �жϵ�ǰ�����Ƿ�����������֮��
     * @param startDate ��ʼʱ��
     * @param endDate������ʱ��
     * @return��
     */
    public static boolean betweenStartDateAndEndDate(Date startDate,Date endDate){
        boolean bool=false;
        Date curDate=new Date();
        if (curDate.after(startDate) && curDate.before(GetDate.dateAdd( INTERVAL_DAY ,endDate,1)) ){
            bool=true;
        }
        return bool;
         
    }
     
    /**
     * �жϵ�ǰʱ���Ƿ���������ʱ��֮��
     * @param startDate ��ʼʱ��
     * @param endDate������ʱ��
     * @return��
     */
    public static boolean nowDateBetweenStartDateAndEndDate(Date startDate,Date endDate){
        boolean bool=false;
        Date curDate=new Date();
        if (curDate.after(startDate) && curDate.before(endDate)){
            bool=true;
        }
        return bool;
    }
     
    /**
     * �жϵ�ǰʱ���Ƿ���date֮��
     * @param date
     * @return��
     */
    public static boolean nowDateAfterDate(Date date){
        boolean bool=false;
        Date curDate=new Date();
        if (curDate.after(date)){
            bool=true;
        }
        return bool;
    }
     
     
    /**
     * �ж϶����������������,����ʱ��Ϊnullʱ����ȡ��ǰʱ��
     * @param startDate ��ʼʱ��
     * @param endDate������ʱ��
     * @return��
     */
    public static int getBetweenTodaysStartDateAndEndDate(Date startDate,Date endDate){
        int betweentoday = 0;
        if(startDate==null){
            return betweentoday;
        }
        if(endDate==null){
            Calendar calendar = Calendar.getInstance();
            String year = new Integer(calendar.get(Calendar.YEAR)).toString();
            String month = new Integer((calendar.get(calendar.MONTH)+1)).toString();
            String day =  new Integer(calendar.get(calendar.DAY_OF_MONTH)).toString();
            String strtodaytime = year+"-"+month+"-"+day;
            DateFormat  formatter=new SimpleDateFormat("yyyy-MM-dd");  
            try {
                endDate = formatter.parse(strtodaytime);
            } catch (ParseException e) {
                //TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
         
        if(endDate.after(startDate)){
            betweentoday =  (int)((endDate.getTime() -startDate.getTime())/86400000);
        }else{
            betweentoday =  (int)((startDate.getTime() -endDate.getTime())/86400000);
        }
        return betweentoday;
    }
     /**  
        *   ȡ��ָ����������ʱ���ַ�{������ʽ}  
            @param   format   ʱ���ʽ�ɳ�������  
            8: ��YYMMDDHH            8λ  
            10:��YYMMDDHHmm          10λ  
            12:��YYMMDDHHmmss        12λ  
            14:��YYYYMMDDHHmmss      14λ  
            15:��YYMMDDHHmmssxxx     15λ   (����xxx   �Ǻ���)
 
        */
    public   static  String  getTime(int  format){  
        StringBuffer   cTime=new   StringBuffer(10);  
        Calendar   time=Calendar.getInstance();  
        int   miltime=time.get(Calendar.MILLISECOND);  
        int   second=time.get(Calendar.SECOND);  
        int   minute=time.get(Calendar.MINUTE);  
        int   hour=time.get(Calendar.HOUR_OF_DAY);  
        int   day   =time.get(Calendar.DAY_OF_MONTH);  
        int   month=time.get(Calendar.MONTH)+1;  
        int   year   =time.get(Calendar.YEAR);  
        if(format!=14){  
                if(year>=2000)   year=year-2000;  
                else   year=year-1900;  
        }  
        if(format>=2){  
                if(format==14)   cTime.append(year);  
                else         cTime.append(getFormatTime(year,2));  
        }  
        if(format>=4)  
                cTime.append(getFormatTime(month,2));  
        if(format>=6)  
                cTime.append(getFormatTime(day,2));  
        if(format>=8)  
                cTime.append(getFormatTime(hour,2));  
        if(format>=10)  
                cTime.append(getFormatTime(minute,2));  
        if(format>=12)  
                cTime.append(getFormatTime(second,2));  
        if(format>=15)  
                cTime.append(getFormatTime(miltime,3));  
        return   cTime.toString();  
    }  
      /**  
        *����������λ���ַ�  
        *   @param   time   Ҫת����ʽ��ʱ��  
        *   @param   format��ת���ĸ�ʽ  
        *   @return��String   ת����ʱ��  
        */
    private  static  String  getFormatTime(int  time,int   format){  
          StringBuffer   numm=new   StringBuffer();  
          int   length=String.valueOf(time).length();
          if(format<length)   return   null;
          for(int   i=0   ;i<format-length   ;i++){  
                  numm.append("0");  
          }  
          numm.append(time);  
          return   numm.toString().trim();  
   }  
     
     
    /**
     * �������ȥ�û�����
     * @param birthday
     * @return int
     * @exception
     * @author     ��Ƥ
     * @Date       Apr 24, 2008
     */
    public static int getUserAge(Date birthday){
         if(birthday == null) return 0;
         Calendar cal = Calendar.getInstance();
         if(cal.before(birthday)) {
             return 0;
         }
         int yearNow = cal.get(Calendar.YEAR);
         cal.setTime(birthday);// ��ʱ�丳ֵ
         int yearBirth = cal.get(Calendar.YEAR);
         return yearNow - yearBirth;
    }
 
    /**
     * ��int��ʱ��(1970�����������)ת����Date��ʱ��
     * @param unixTime 1970�����������
     * @return
     * @author     ֣��
     */
    public static Date getDateByUnixTime(int unixTime){
        return new Date(unixTime*1000L);
    }
     
    /**
     * ��Date��ʱ��ת����int��ʱ��(1970�����������)
     * @param unixTime 1970�����������
     * @return
     * @author     ֣��
     */
    public static int getUnixTimeByDate(Date date){
        return (int)(date.getTime()/1000);
    }
 
     
    public static void main(String[] args) {
        Date date1 =dateFormat("1981-01-01 00:00:00");
        Date date2 =dateFormat("1900-12-31 00:00:00");
        System.out.println(birthdayFormat(date1));
        System.out.println(birthdayFormat(date2));
    }
    public static Date getNextDay(Date date) {
        long time = (date.getTime() / 1000) + 60 * 60 * 24;
        date.setTime(time * 1000);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            date = format.parse(format.format(date));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return date;
 
    }
 
    /**
     * @param date
     * @return
     * ������Date�����ı����
     */
    public static Date nextDay(Date date) {
        Date newDate = (Date) date.clone();
        long time = (newDate.getTime() / 1000) + 60 * 60 * 24;
        newDate.setTime(time * 1000);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            newDate = format.parse(format.format(newDate));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return newDate;
 
    }
 
    @SuppressWarnings("unused")
    public static Date getNowTime() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String dateStr = dateFormat(date);
        try {
            date = format.parse(dateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
 
    public static Date getTomorrow(Date date1) {
 
        // ������ǰʱ�����
        Calendar now = Calendar.getInstance();
        now.setTime(date1);
        // ����[+1]day
        now.add(Calendar.DATE, 1);
        return now.getTime();
    }
 
    public static Date getWeekAgo(Date date) {
        Date newDate = (Date) date.clone();
        long time = (newDate.getTime() / 1000) - 60 * 60 * 24 * 7;
        newDate.setTime(time * 1000);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            newDate = format.parse(format.format(newDate));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return newDate;
    }
 
    public static Date getDatebyTime(Date date, int n) {
        String str = GetDate.dateFormat(date, "yyyy-MM-dd");
        String[] strs = str.split("-");
        int month = Integer.parseInt(strs[1]);
        int monthnow = (month + n) % 12;
        int year = Integer.parseInt(strs[0]) + (month + n) / 12;
        str = String.valueOf(year) + "-" + String.valueOf(monthnow) + "-"
                + strs[2];
        return GetDate.dateFormat(str, "yyyy-MM-dd");
    }
 
    /**
     * @param date
     * @return
     * ������Date�����ı����
     */
    public static Date yesterday(Date date) {
        Date newDate = (Date) date.clone();
        long time = (newDate.getTime() / 1000) - 60 * 60 * 24;
        newDate.setTime(time * 1000);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            newDate = format.parse(format.format(newDate));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return newDate;
    }
 
    public static Date getYesterday(Date date) {
        long time = (date.getTime() / 1000) - 60 * 60 * 24;
        date.setTime(time * 1000);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            date = format.parse(format.format(date));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return date;
    }
 
    private static SimpleDateFormat format = null;
    @SuppressWarnings("unused")
    public static String getStringNowTime() {
        format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String dateStr = dateFormat(date);
 
        return dateStr;
    }
     
     
    /**
     * ָ��ʱ�������
     * ָ��ʱ�����������ָ�����������
     * @param time ʱ��
     * @param range  ��
     * @return
     */
    public static long getSpecifyTimeSec(long time,int range){
        Date date           = new Date((time*1000+(23-Calendar.ZONE_OFFSET)*3600000)/86400000*86400000-(23-Calendar.ZONE_OFFSET)*3600000);  
        long zeroTime       = date.getTime()/1000;
        long specifyTime    = range * 24 * 3600;
        return (zeroTime+specifyTime);
    }
     
    /**
     * ��int��ʱ��(1970�����������)ת����ָ����ʽ��ʱ��
     *
     * @param unixTime 1970�����������
     * @param dateFormat ʱ���ʽ
     * @return
     * @author  sky
     */
    public static String formatDateByUnixTime(long unixTime, String dateFormat){
        return dateFormat(new Date(unixTime*1000), dateFormat);
    }
     
}