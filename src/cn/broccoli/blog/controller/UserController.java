package cn.broccoli.blog.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import cn.broccoli.blog.po.User;
import cn.broccoli.blog.service.UserService;
import cn.broccoli.blog.util.CusAccessObjectUtil;
import cn.broccoli.blog.util.registUtil;
import cn.broccoli.blog.util.verifyCode;
import net.sf.json.JSONObject;



@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
    private verifyCode ver =new verifyCode();
    
	//退出登录
	@RequestMapping("/exitLogin")
     public String exitLogin(HttpServletRequest request) throws Exception {
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("user");
		System.out.println(user);
		System.out.println("退出");
		request.getSession().invalidate();
		return "redirect:/user/index.action";
     }
	
	
	   @RequestMapping("/home")
	    public String toUserHome(){
	        return "/index4.jsp";
	    }
	/**
	 * 获取验证码
	 * 
	 * @param response
	 * @param session
	 */
	@RequestMapping("/getVerifyCode")
	public void generate(HttpServletResponse response, HttpSession session) {
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		String verifyCodeValue = ver.drawImg(output);

		session.setAttribute("verifyCodeValue", verifyCodeValue);

		try {
			ServletOutputStream out = response.getOutputStream();
			output.writeTo(out);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


}
