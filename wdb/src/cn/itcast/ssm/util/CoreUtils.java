package cn.itcast.ssm.util;

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
 * 通用工具类
 * @author Simon
 *
 */
public class CoreUtils {
	
	/**
	 * 给sessionName加上前缀，以避免和其他项目冲突(前缀是项目名称)
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
	 * 格式化参数map，将参数最后一个值作为真实值
	 * ;如/?a=1&b=2&a=3，最终a=3
	 * @param paramMap
	 * @return 
	 */
	public static Map<String,String> formatParamMap(Map<String,String[]> paramMap){
		Map<String,String> map = new HashMap<String,String>();
		Iterator<String> keys = paramMap.keySet().iterator();
		while(keys.hasNext()){
			String key = keys.next();//key
			String[] value = paramMap.get(key);//上面key对应的value
			map.put(key, value[value.length-1]);
		}
		return map;
	}
	/**
	 * null值变成空字符
	 */
	public static String nullToEmpty(String str){
		return str==null?"":str;
	}
	/**
	 * 获取当前时间的时间戳，单位秒
	 * @return
	 */
	public static int getNowTimestamp(){
		Long time = System.currentTimeMillis()/1000;
		return time.intValue();
	}
	
	/**
	 * 格式化时间戳成日期时间
	 * @param timestamp
	 * @param format
	 * @return
	 */
	public static String formatTimestamp(int timestamp,String... format){
		if(timestamp==0){
			return "暂无数据";
		}
		String formatString = "yyyy-MM-dd HH:mm";
		if(format.length==1){
			formatString = format[0];
		}
		SimpleDateFormat sdf = new SimpleDateFormat(formatString);
		return sdf.format(new Date(timestamp*1000L));
	}
	/**
	 * 将日期转成时间戳
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
     * 将一个 JavaBean 对象转化为一个  Map
     * @param bean 要转化的JavaBean 对象
     * @return 转化出来的  Map 对象
     * @throws IntrospectionException 如果分析类属性失败
     * @throws IllegalAccessException 如果实例化 JavaBean 失败
     * @throws InvocationTargetException 如果调用属性的 setter 方法失败
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
     * 将一个 Map 对象转化为一个 JavaBean
     * @param type 要转化的类型
     * @param map 包含属性值的 map
     * @return 转化出来的 JavaBean 对象
     * @throws IntrospectionException 如果分析类属性失败
     * @throws IllegalAccessException 如果实例化 JavaBean 失败
     * @throws InstantiationException 如果实例化 JavaBean 失败
     * @throws InvocationTargetException 如果调用属性的 setter 方法失败
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
		} // 获取类属性
        Object obj = null;
		try {
			obj = type.newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e2) {
			e2.printStackTrace();
		}// 创建 JavaBean 对象

        // 给 JavaBean 对象的属性赋值
        PropertyDescriptor[] propertyDescriptors =  beanInfo.getPropertyDescriptors();
        for (int i = 0; i< propertyDescriptors.length; i++) {
            PropertyDescriptor descriptor = propertyDescriptors[i];
            String propertyName = descriptor.getName();

            if (map.containsKey(propertyName)) {
                // 下面一句可以 try 起来，这样当一个属性赋值失败的时候就不会影响其他属性赋值。
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
	 * 端掉字符串左侧的N多指定字符
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
  	 * 端掉字符串右侧的N多指定字符
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
	 * 生成url,加上contextPath并把驼峰变成下划线
	 * @param uri
	 * @return
	 *//*
	public static String generateUrl(String uri) {
		String url = CoreUtils.rtrim(SpringContextUtil.getContextPath(),"/")+"/";
		if (uri == null || uri.length() == 0) {
            return url;
        }
		//删除uri前面的N多个杠
		uri = CoreUtils.ltrim(uri,"/");
		if(uri==""){
			return url;
		}
		
		//删除末尾的杠
		uri = CoreUtils.rtrim(uri,"/");
		
		//驼峰转成下划线
		uri = CoreUtils.underscoreName(uri);
		
		String urlHtmlSuffix = Constants.URL_SUFFIX;
		if(urlHtmlSuffix!=null && urlHtmlSuffix.isEmpty()){ //接上url伪静态
			if(urlHtmlSuffix.indexOf(".")!=0){ //没有点就加上
				urlHtmlSuffix = "."+urlHtmlSuffix;
			}
			if(uri.indexOf("?")==(uri.length()-1)){
				uri = uri.substring(0, uri.length()-1); //删除末尾的问号
			}
			if(uri.indexOf("?")!=-1){
				String[] arr = uri.split("\\?"); //提取url参数
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
	 * 命名由驼峰法变下划线小写
	 * @return return "" if name is null or empty
	 *//*
	public static String underscoreName(String name) {
		if(name==null || name.isEmpty()){
			return "";
		}
	    StringBuilder result = new StringBuilder();
    	String[] letters = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
        // 将第一个字符处理成小写
        result.append(name.substring(0, 1).toLowerCase());
        // 循环处理其余字符
        for (int i = 1; i < name.length(); i++) {
            String s = name.substring(i, i + 1);
            // 在大写字母前添加下划线
            if (Arrays.asList(letters).contains(s)) {
                result.append("_");
            }
            // 其他字符直接转成小写
            result.append(s.toLowerCase());
        }
	    return result.toString();
	}
	
	*//**
	 * 命名由下划线小写变驼峰法
	 * @param name 待转换的下划线名称
	 * @param isFirstUpperCase 首字母是否需要大写，默认小写
	 * @return  return null if name is null or empty
	 *//*
	public static String camelName(String name,Boolean... isFirstUpperCase) {
		if(name==null || name.isEmpty()){
			return "";
		}
		StringBuilder result = new StringBuilder();
		if(isFirstUpperCase.length!=0 && isFirstUpperCase[0]){
			// 将第一个字符处理成大写
	        result.append(name.substring(0, 1).toUpperCase());
		}else{
			// 将第一个字符保持不变
	        result.append(name.substring(0, 1));
		}
		
        // 循环处理其余字符
        for (int i = 1; i < name.length(); i++) {
            String s = name.substring(i, i + 1);
            // 遇到下划线则舍弃，并把后一个字符变大写
            if (s.equals("_")) {
            	i++;
            	String nextChar = name.substring(i, i+1);
            	result.append(nextChar.toUpperCase());
            }else{
            	// 其他字符直接追加上
                result.append(s);
            }
            
        }
	    return result.toString();
	}
	
	
	*//**
	 * ajax返回json数据
	 * @param response
	 * @param data 要返回的数据
	 *//*
	public static String ajaxReturn(HttpServletResponse response,Object data){
		render(response,JSON.toJSONString(data),"json");
		return null;
	}
	
	
	*//**
	 * ajax返回json数据，参数重载
	 * @param response
	 * @param data 要返回的数据
	 * @param info 返回的信息
	 * @param status 返回的状态
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
	 * 发送内容。使用UTF-8编码。
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
	 * 缩放图片
	 * @param imageUrl 原始图片的网址
	 * @param resizeString 缩放尺寸 100x200
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
	 * 裁剪图片
	 * @param imageUrl 原始图片的网址
	 * @param cropString 裁剪尺寸 100x200
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
	 * 格式化url参数,删除page参数(分页url使用)
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
	 * 初始化url参数
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
	 * 检验是否为数字
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
	 * 生成订单号
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
	 * 生成验证码
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
	 * 格式化字符串,将指定位置替换成指定字符
	 * @param str [原字符串]
	 * @param start [起始位置,从0开始]
	 * @param len [替换长度]
	 * @param replace [替换字符]
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
