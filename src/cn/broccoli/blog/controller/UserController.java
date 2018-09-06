package cn.broccoli.blog.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
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
import cn.broccoli.blog.util.PhotoUtils;
import cn.broccoli.blog.util.registUtil;
import cn.broccoli.blog.util.verifyCode;
import net.sf.json.JSONObject;



@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
    private verifyCode ver =new verifyCode();
    
    static Logger logger = Logger.getLogger(UserController.class.getName());
    //访问个人中心
    @RequestMapping("/details")
	public ModelAndView test(HttpServletRequest request) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("user-details");
		return modelAndView;
	}
    //修改用户资料
    @RequestMapping("/update_userinfo")
	public Object update_userinfo(HttpSession session,HttpServletRequest request) throws Exception {
    	JSONObject json = new JSONObject();
		User user=(User) session.getAttribute("user");
		user.setUserNikename(request.getParameter("userNikename"));
		user.setUserDescription(request.getParameter("userDescription"));
		user.setUserEmail(request.getParameter("userEmail"));
		user.setUserQq(request.getParameter("userQq"));
		user.setUserSchool(request.getParameter("userSchool"));
		user.setUserSex(request.getParameter("userSex"));
		if(userService.updateUserInfo(user)>0) {
			json.put("msg", 1);
		}else {
			json.put("msg", 0);
		}
		
		return json;
	}
    //修改用户头像
	@ResponseBody
	@RequestMapping("/userImageUpdate")
	public Object updateUserImage(HttpServletRequest request, HttpSession session, String base64Data) throws Exception {
		StringBuffer sb=new StringBuffer();
		JSONObject json = new JSONObject();
		User user=(User) session.getAttribute("user");
		if (base64Data == null || "".equals(base64Data)) {
			throw new Exception("上传失败，上传图片数据为空");
		}
		//获取图片服务器所在目录
		sb.append(session.getServletContext().getRealPath("//upload//image"));
		//文件名
		String realName = UUID.randomUUID().toString() + ".jpg";
		//重组文件完整目录
		sb.append("//"+realName);
		logger.info("sb:"+sb.toString());
		logger.info("realName:"+realName);
		if (PhotoUtils.Base64ToImage(PhotoUtils.Base64ToData(base64Data), sb.toString())) {
			if(userService.updateUserImage(user.getUserId(), realName)>0) {
				//插入成功后更新session
				user.setUserImageUrl(realName);
				session.setAttribute("user", user);
				json.put("msg", 1);
			}
			
		} else {
			json.put("msg", 0);
		}
		return json;
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
