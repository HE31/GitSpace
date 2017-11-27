package com.zlzkj.app.util;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
/*
import com.alibaba.druid.sql.visitor.functions.Char;
import com.zlzkj.core.base.Constants;
import com.zlzkj.core.util.SpringContextUtil;
*/
/**
 * ͨ�ù�����
 * @author Simon
 *
 */
public class CoreUtils {
	
	/**
	 * ��sessionName����ǰ׺���Ա����������Ŀ��ͻ(ǰ׺����Ŀ���)
	 * @param sessionName
	 * @return
	 */
	public static String formatSessionName(String sessionName){
		// - /usr/local/Cellar/tomcat/7.0.50/libexec/webapps/shdyj-admin/WEB-INF/classes/
		String path = CoreUtils.class.getClassLoader().getResource("").getPath();
		String flagStr = "/WEB-INF/classes/";
		if(path.indexOf(flagStr)!=-1){
			path = path.substring(0, path.length() - flagStr.length());
			path = path.substring(path.lastIndexOf("/")+1);
		}
		return path+"_"+sessionName;
	}
	
	/**
	 * ��ʽ������map�����������һ��ֵ��Ϊ��ʵֵ
	 * ;��/?a=1&b=2&a=3������a=3
	 * @param paramMap
	 * @return 
	 */
	public static Map<String,String> formatParamMap(Map<String,String[]> paramMap){
		Map<String,String> map = new HashMap<String,String>();
		Iterator<String> keys = paramMap.keySet().iterator();
		while(keys.hasNext()){
			String key = keys.next();//key
			String[] value = paramMap.get(key);//����key��Ӧ��value
			map.put(key, value[value.length-1]);
		}
		return map;
	}
	/**
	 * nullֵ��ɿ��ַ�
	 */
	public static String nullToEmpty(String str){
		return str==null?"":str;
	}
	/**
	 * ��ȡ��ǰʱ���ʱ�������λ��
	 * @return
	 */
	public static int getNowTimestamp(){
		Long time = System.currentTimeMillis()/1000;
		return time.intValue();
	}
	
	/**
	 * ��ʽ��ʱ���������ʱ��
	 * @param timestamp
	 * @param format
	 * @return
	 */
	public static String formatTimestamp(int timestamp,String... format){
		if(timestamp==0){
			return "�������";
		}
		String formatString = "yyyy-MM-dd HH:mm";
		if(format.length==1){
			formatString = format[0];
		}
		SimpleDateFormat sdf = new SimpleDateFormat(formatString);
		return sdf.format(new Date(timestamp*1000L));
	}
	/**
	 * ������ת��ʱ���
	 * @param time
	 * @param format
	 * @return
	 * @throws ParseException
	 */
	public static long formatDatetamp(String time,String...format ){
		
		String formatString = "yyyy-MM-dd HH:mm:ss";
		if(format.length==1){
			formatString = format[0];
		}
		
		SimpleDateFormat df = new SimpleDateFormat(formatString);
		if("".equals(time)){
			return 0;
		}else{
			Date date = null;
			try {
				date = df.parse(time);
			} catch (ParseException e) {
			}
			return date.getTime()/1000;
		}
	}
	
	/**
     * ��һ�� JavaBean ����ת��Ϊһ��  Map
     * @param bean Ҫת����JavaBean ����
     * @return ת��������  Map ����
     * @throws IntrospectionException ������������ʧ��
     * @throws IllegalAccessException ���ʵ�� JavaBean ʧ��
     * @throws InvocationTargetException ���������Ե� setter ����ʧ��
     */
	public static Map<String, Object> convertBean(Object bean){
		if(bean==null){
			return null;
		}
        Class<? extends Object> type = bean.getClass();
        Map<String, Object> returnMap = new HashMap<String, Object>();
        BeanInfo beanInfo = null;
		try {
			beanInfo = Introspector.getBeanInfo(type);
		} catch (IntrospectionException e) {
			e.printStackTrace();
		}

        PropertyDescriptor[] propertyDescriptors =  beanInfo.getPropertyDescriptors();
        for (int i = 0; i< propertyDescriptors.length; i++) {
            PropertyDescriptor descriptor = propertyDescriptors[i];
            String propertyName = descriptor.getName();
            if (!propertyName.equals("class")) {
                Method readMethod = descriptor.getReadMethod();
                Object result = null;
				try {
					result = readMethod.invoke(bean, new Object[0]);
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				}catch (IllegalAccessException e2) {
					e2.printStackTrace();
				}catch (InvocationTargetException e3) {
					e3.printStackTrace();
				}
				
//                if (result != null) {
//                    returnMap.put(propertyName, result);
//                } else {
//                    returnMap.put(propertyName, "");
//                }
                returnMap.put(propertyName, result);
            }
        }
        return returnMap;
    }
    
    /**
     * ��һ�� Map ����ת��Ϊһ�� JavaBean
     * @param type Ҫת��������
     * @param map ������ֵ�� map
     * @return ת�������� JavaBean ����
     * @throws IntrospectionException ������������ʧ��
     * @throws IllegalAccessException ���ʵ�� JavaBean ʧ��
     * @throws InstantiationException ���ʵ�� JavaBean ʧ��
     * @throws InvocationTargetException ���������Ե� setter ����ʧ��
     */
	public static Object convertMap(Class<?> type, Map<?, ?> map){
		if(map==null){
			return null;
		}
        BeanInfo beanInfo = null;
		try {
			beanInfo = Introspector.getBeanInfo(type);
		} catch (IntrospectionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // ��ȡ������
        Object obj = null;
		try {
			obj = type.newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e2) {
			e2.printStackTrace();
		}// ���� JavaBean ����

        // �� JavaBean ��������Ը�ֵ
        PropertyDescriptor[] propertyDescriptors =  beanInfo.getPropertyDescriptors();
        for (int i = 0; i< propertyDescriptors.length; i++) {
            PropertyDescriptor descriptor = propertyDescriptors[i];
            String propertyName = descriptor.getName();

            if (map.containsKey(propertyName)) {
                // ����һ����� try ����������һ�����Ը�ֵʧ�ܵ�ʱ��Ͳ���Ӱ���������Ը�ֵ��
                Object value = map.get(propertyName);

                Object[] args = new Object[1];
                args[0] = value;

                try {
					descriptor.getWriteMethod().invoke(obj, args);
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e2) {
					e2.printStackTrace();
				} catch (InvocationTargetException e3) {
					e3.printStackTrace();
				}
            }
        }
        return obj;
    }
	
/*	*//**
	 * �˵��ַ�����N��ָ���ַ�
	 * @param str
	 * @param needle
	 * @return
	 *//*
  	public static String ltrim(String str,String needle){
  		int start = 0;
  		while (start != str.length() && needle.indexOf(str.charAt(start)) != -1) {
              start++;
          }
  		if(start == str.length()){
  			return "";
  		}
  		return str.substring(start);
  	}
  	*//**
  	 * �˵��ַ��Ҳ��N��ָ���ַ�
  	 * @param str
  	 * @param needle
  	 * @return
  	 *//*
  	public static String rtrim(String str,String needle){
  		int end = str.length();
  		while (end != 0 && needle.indexOf(str.charAt(end-1)) != -1) {
  			end--;
          }
  		if(end == 0){
  			return "";
  		}
  		return str.substring(0,end);
  	}
	
	*//**
	 * ���url,����contextPath�����շ����»���
	 * @param uri
	 * @return
	 *//*
	public static String generateUrl(String uri) {
		String url = CoreUtils.rtrim(SpringContextUtil.getContextPath(),"/")+"/";
		if (uri == null || uri.length() == 0) {
            return url;
        }
		//ɾ��uriǰ���N�����
		uri = CoreUtils.ltrim(uri,"/");
		if(uri==""){
			return url;
		}
		
		//ɾ��ĩβ�ĸ�
		uri = CoreUtils.rtrim(uri,"/");
		
		//�շ�ת���»���
		uri = CoreUtils.underscoreName(uri);
		
		String urlHtmlSuffix = Constants.URL_SUFFIX;
		if(urlHtmlSuffix!=null && urlHtmlSuffix.isEmpty()){ //����urlα��̬
			if(urlHtmlSuffix.indexOf(".")!=0){ //û�е�ͼ���
				urlHtmlSuffix = "."+urlHtmlSuffix;
			}
			if(uri.indexOf("?")==(uri.length()-1)){
				uri = uri.substring(0, uri.length()-1); //ɾ��ĩβ���ʺ�
			}
			if(uri.indexOf("?")!=-1){
				String[] arr = uri.split("\\?"); //��ȡurl����
				url += CoreUtils.rtrim(arr[0],"/") + urlHtmlSuffix + "?" + arr[1];
			}else{
				url += uri + urlHtmlSuffix;
			}
		}else{
			url += uri;
		}
		
		return url;
    }
	
	*//**
	 * �������շ巨���»���Сд
	 * @return return "" if name is null or empty
	 *//*
	public static String underscoreName(String name) {
		if(name==null || name.isEmpty()){
			return "";
		}
	    StringBuilder result = new StringBuilder();
    	String[] letters = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
        // ����һ���ַ����Сд
        result.append(name.substring(0, 1).toLowerCase());
        // ѭ�����������ַ�
        for (int i = 1; i < name.length(); i++) {
            String s = name.substring(i, i + 1);
            // �ڴ�д��ĸǰ����»���
            if (Arrays.asList(letters).contains(s)) {
                result.append("_");
            }
            // �����ַ�ֱ��ת��Сд
            result.append(s.toLowerCase());
        }
	    return result.toString();
	}
	
	*//**
	 * �������»���Сд���շ巨
	 * @param name ��ת�����»������
	 * @param isFirstUpperCase ����ĸ�Ƿ���Ҫ��д��Ĭ��Сд
	 * @return  return null if name is null or empty
	 *//*
	public static String camelName(String name,Boolean... isFirstUpperCase) {
		if(name==null || name.isEmpty()){
			return "";
		}
		StringBuilder result = new StringBuilder();
		if(isFirstUpperCase.length!=0 && isFirstUpperCase[0]){
			// ����һ���ַ���ɴ�д
	        result.append(name.substring(0, 1).toUpperCase());
		}else{
			// ����һ���ַ�ֲ���
	        result.append(name.substring(0, 1));
		}
		
        // ѭ�����������ַ�
        for (int i = 1; i < name.length(); i++) {
            String s = name.substring(i, i + 1);
            // �����»����������Ѻ�һ���ַ���д
            if (s.equals("_")) {
            	i++;
            	String nextChar = name.substring(i, i+1);
            	result.append(nextChar.toUpperCase());
            }else{
            	// �����ַ�ֱ��׷����
                result.append(s);
            }
            
        }
	    return result.toString();
	}
	
	
	*//**
	 * ajax����json���
	 * @param response
	 * @param data Ҫ���ص����
	 *//*
	public static String ajaxReturn(HttpServletResponse response,Object data){
		render(response,JSON.toJSONString(data),"json");
		return null;
	}
	
	
	*//**
	 * ajax����json��ݣ���������
	 * @param response
	 * @param data Ҫ���ص����
	 * @param info ���ص���Ϣ
	 * @param status ���ص�״̬
	 * @return
	 *//*
	public static String ajaxReturn(HttpServletResponse response,Object data,String info,int status){
		
		Map<String, Object> jsonData = new HashMap<String,Object>();
		jsonData.put("data", data);
		jsonData.put("info", info);
		jsonData.put("status", status);
		
		render(response,JSON.toJSONString(jsonData),"json");
		return null;
	}
	
	
	*//**
	 * �������ݡ�ʹ��UTF-8���롣
	 * 
	 * @param response
	 * @param contentType
	 * @param text
	 *//*
	public static void render(HttpServletResponse response,String text,String... contentType) {
	
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		PrintWriter pw = null;
		try {
			pw = response.getWriter();
			pw.write(text);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{  
	        pw.close();
	    } 
	}
	
	*//**
	 * ����ͼƬ
	 * @param imageUrl ԭʼͼƬ����ַ
	 * @param resizeString ���ųߴ� 100x200
	 * @return
	 *//*
	public static String resizeImage(String imageUrl,String resizeString){
		if(!UploadUtils.isImageResize()){
			return imageUrl;
		}
		String extName = imageUrl.substring(imageUrl.lastIndexOf(".")).toLowerCase();
		return imageUrl+"_r"+resizeString+extName;
	}
	
	*//**
	 * �ü�ͼƬ
	 * @param imageUrl ԭʼͼƬ����ַ
	 * @param cropString �ü��ߴ� 100x200
	 * @return
	 *//*
	public static String cropImage(String imageUrl,String cropString){
		if(!UploadUtils.isImageResize()){
			return imageUrl;
		}
		String extName = imageUrl.substring(imageUrl.lastIndexOf(".")).toLowerCase();
		return imageUrl+"_c"+cropString+extName;
	}*/
	
	/**
	 * ��ʽ��url����,ɾ��page����(��ҳurlʹ��)
	 * @param map
	 * @return
	 */
	public static String formatUrl(Map<String, String[]> map){
		Map<String, Object> mapUrl = new HashMap<String, Object>(map);
		mapUrl.remove("page");
		mapUrl.remove("_");
		Iterator<String> keys = mapUrl.keySet().iterator();
		String param = "";
		while(keys.hasNext()){
			String k = keys.next();
			String [] v = (String [])mapUrl.get(k);
			
			try {
				param += k+"="+new String(v[0].getBytes("ISO-8859-1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(keys.hasNext()){
				param += "&";
			}
		}
		return param;
	}
	/**
	 * ��ʼ��url����
	 * @param params
	 * @return
	 */
	public static String formatUrlParam(String params) {
		String[] paramStrings = params.split("-");
		String param = "";
		for(int i=1;i<paramStrings.length;i++){
			try {
				param += "-"+new String(paramStrings[i].getBytes("ISO-8859-1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return  param;
	}
	/**
	 * �����Ƿ�Ϊ����
	 * @param str
	 * @return
	 */
	public final static boolean isNumeric(String s) {
		if (s != null && !"".equals(s.trim()))
			return s.matches("^[0-9]*$");
		else
			return false;
	}
	/**
	 * ��ɶ�����
	 * @return
	 */
	public static String getOrderSn(){
		String string = "";
		for (int i = 0; i < 5; i++) {
			int random=(int)(Math.random()*10);
			string+=random;
		}
		
		return getNowTimestamp()+string;
	}
	/**
	 * �����֤��
	 * @return
	 */
	public static String getCodeSn(int num){
		String string = "";
		for (int i = 0; i < num; i++) {
			int random=(int)(Math.random()*10);
			string+=random;
		}
		
		return string;
	}

	/**
	 * ��ʽ���ַ�,��ָ��λ���滻��ָ���ַ�
	 * @param str [ԭ�ַ�]
	 * @param start [��ʼλ��,��0��ʼ]
	 * @param len [�滻����]
	 * @param replace [�滻�ַ�]
	 * @return String
	 */
	public static String formatString(String str,Integer start, Integer len, String replace){
		String replaceString = "";
		char[] chars = str.toCharArray();
		for(int i=0;i<chars.length;i++){
			if(i>=start && i<=(len+start-1)){
				replaceString += replace;
			}else{
				replaceString += chars[i];
			}
		}
		return replaceString;
	}
}
