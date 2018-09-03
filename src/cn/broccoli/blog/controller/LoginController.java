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
@RequestMapping("/Login")
public class LoginController {
	@Autowired
	private UserService userService;
    private verifyCode ver =new verifyCode();
    
    @RequestMapping("/index")
	public ModelAndView toLoginIndex(HttpServletRequest request) throws Exception {
    	ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		System.out.println("转发");
		return modelAndView;
	}
    //登录成功返回顶部html
	@RequestMapping("/userTop")
	public ModelAndView getUser(HttpServletRequest request) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("inc/headuser");
		System.out.println("转发");
		return modelAndView;
	}
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
	//用户登录检测用户是否存在
	@RequestMapping("/loginTestUser")
	@ResponseBody
	public Object loginTestUser(HttpServletResponse response ,String username) throws Exception {
		JSONObject resultObject = new JSONObject();
		resultObject.put("msg", userService.LoginByTestUser(username));
	
		return resultObject;
	}
	
    
	/**
	 * 登录逻辑
	 */

	@RequestMapping(value = "/toLogin", method = RequestMethod.POST)
	public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session, String username,
			String password) throws Exception {

		JSONObject resultObject = new JSONObject();
		String inputVerifyCode = request.getParameter("verifyCode");
		System.out.println(inputVerifyCode + username + password);
		String verifyCodeValue = (String) session.getAttribute("verifyCodeValue");
		User user = userService.login(username);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		if (user != null && !user.equals(null)) {
			if (user.getUserName().equals(username)||user.getUserEmail().equals(username) || user.getUserPhone().equals(username)) {

				if (user.getUserPwd().equals(password)) {
					if (inputVerifyCode != null &&verifyCodeValue.equals(inputVerifyCode.toUpperCase())) {
						
						session.setAttribute("user", user);
						System.out.println("验证成功");
					} else {
						resultObject.put("msg_txt", "验证码错误");
						resultObject.put("msg", 0);
					}
				} else {
					resultObject.put("msg_txt", "用户名或密码错误");
					resultObject.put("msg", 0);
				}
			} else {
				resultObject.put("msg_txt", "用户名或密码错误");
				resultObject.put("msg", 0);
			}
		}
		out.write(resultObject.toString());
		System.out.println("写入到前台");
		out.flush();
		out.close();
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
