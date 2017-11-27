package com.zlzkj.app.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 核心拦截器，配置request的一些初始值
 * @author Simon
 *
 */
public class LoginInterceptor implements HandlerInterceptor{
	

	
	/**
	 * 拦截器白名单列表
	 */
	public String[] exclude; 
	
	public void setExclude(String[] exclude) {
		this.exclude = exclude;
	}
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		//白名单放行
		if(exclude!=null && exclude.length!=0){
			String uri = request.getRequestURI().substring(request.getContextPath().length());
			for(String one:exclude){
				if(uri.startsWith(one)){
					return true;
				}
			}
		}
		//解析url验证是否显示左侧
		String path = request.getServletPath();  
        //String[] str = path.split("/");
         //拦截地址清单, 如果请求中是以以下路径开头，则进行拦截
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
