package cn.itcast.ssm.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	 private List<String> excludedUrls;
	  

	    public List<String> getExcludedUrls() {
	        return excludedUrls;
	    }

	    public void setExcludedUrls(List<String> excludedUrls) {
	        this.excludedUrls = excludedUrls;
	    }

	//���� Handler����֮ǰִ��
	//���������֤�������Ȩ
	//���������֤�������֤ͨ����ʾ��ǰ�û�û�е�½����Ҫ�˷������ز�������ִ��
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		//��ȡ�����url
		String url = request.getRequestURI();
		//�ж�url�Ƿ��ǹ��� ��ַ��ʵ��ʹ��ʱ������ ��ַ���������ļ��У�
		//���﹫����ַ�ǵ�½�ύ�ĵ�ַ
		//if(url.indexOf("LoginCheck.action")>=0){
		  for (String URL1 : excludedUrls) {
	            if (url.endsWith(URL1)) {
			//������е�½�ύ������
			return true;
		}
		  }
		//�ж�session
		HttpSession session  = request.getSession();
		//��session��ȡ���û������Ϣ
		String username = (String) session.getAttribute("custnick");
		
		if(username != null){
			//��ݴ��ڣ�����
			return true;
		}
		
		//ִ�������ʾ�û������Ҫ��֤����ת��½ҳ��
		request.getRequestDispatcher("/WEB-INF/jsp/customer/Login.jsp").forward(request, response);
		
		//return false��ʾ���أ�������ִ��
		//return true��ʾ����
		return false;
	}

	//����Handler����֮�󣬷���modelAndView֮ǰִ��
	//Ӧ�ó�����modelAndView�����������õ�ģ������(����˵�����)�����ﴫ����ͼ��Ҳ����������ͳһָ����ͼ
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		System.out.println("HandlerInterceptor1...postHandle");
		
	}

	//ִ��Handler���ִ�д˷���
	//Ӧ�ó�����ͳһ�쳣����ͳһ��־����
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		System.out.println("HandlerInterceptor1...afterCompletion");
	}

}
