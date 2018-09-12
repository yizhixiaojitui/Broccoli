package cn.broccoli.blog.interceptor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONObject;

public class LoginInterceptor implements HandlerInterceptor{

	/** 
     * 在业务处理器处理请求之前被调用 
     * 如果返回false 
     * 从当前的拦截器往回执行所有拦截器的afterCompletion(),再退出拦截器链    
     * 如果返回true 
     * 执行下一个拦截器,直到所有的拦截器都执行完毕 
     * 再执行被拦截的Controller 
     * 然后进入拦截器链, 
     * 从最后一个拦截器往回执行所有的postHandle() 
     * 接着再从最后一个拦截器往回执行所有的afterCompletion() 
     */  
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	
		Object user = request.getSession().getAttribute("user");
		 if (null==user) {
	            System.out.println("尚未登录，调到登录页面");
	            redirect(request,response);
	            return false;
	        }
	        
	        return true;
	}
	/** 
     * 在DispatcherServlet完全处理完请求后被调用,可用于清理资源等    
     * 当有拦截器抛出异常时,会从当前拦截器往回执行所有的拦截器的afterCompletion() 
     */  
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("afterCompletion");
		
	}
	
	 /**
     * 在业务处理器处理请求执行完成后,生成视图之前执行的动作   
     * 可在modelAndView中加入数据，比如当前时间
     */
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		System.out.println("postHandle");
		
	}
	public boolean isAjaxRequest(HttpServletRequest request) { 
        String header = request.getHeader("X-Requested-With"); 
        if (header != null && "XMLHttpRequest".equals(header)) 
            return true; 
        else 
            return false; 
    }
	
	public void redirect(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //获取当前请求的路径
        String basePath = request.getScheme() + "://" + request.getServerName() + ":"  + request.getServerPort()+request.getContextPath();
        //如果request.getHeader("X-Requested-With") 返回的是"XMLHttpRequest"说明就是ajax请求，需要特殊处理 否则直接重定向就可以了
        if("XMLHttpRequest".equals(request.getHeader("X-Requested-With"))){
            //告诉ajax我是重定向
            response.setHeader("REDIRECT", "REDIRECT");
            //告诉ajax我重定向的路径
            response.setHeader("CONTENTPATH", basePath+"/login.jsp");
            response.setStatus(HttpServletResponse.SC_FORBIDDEN);
        }else{
            response.sendRedirect(basePath + "/login.jsp");
        }
    }

}
