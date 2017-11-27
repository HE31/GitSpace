package com.zlzkj.app.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * ����������������request��һЩ��ʼֵ
 * @author Simon
 *
 */
public class LoginInterceptor implements HandlerInterceptor{
	

	
	/**
	 * �������������б�
	 */
	public String[] exclude; 
	
	public void setExclude(String[] exclude) {
		this.exclude = exclude;
	}
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		//����������
		if(exclude!=null && exclude.length!=0){
			String uri = request.getRequestURI().substring(request.getContextPath().length());
			for(String one:exclude){
				if(uri.startsWith(one)){
					return true;
				}
			}
		}
		//����url��֤�Ƿ���ʾ���
		String path = request.getServletPath();  
        //String[] str = path.split("/");
         //���ص�ַ�嵥, �����������������·����ͷ�����������
        String[] urls = {
       //		"/user","/dict","/admin"
        };
        
      /*  if(request.getSession().getAttribute("account") != null){
        	
        	return true;
        }else{
        	response.sendRedirect(request.getContextPath() + "/public/adminlogin");
        }*/
        
		return true;
		
		
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
