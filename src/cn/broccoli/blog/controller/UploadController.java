package cn.broccoli.blog.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.broccoli.blog.util.editorImageMassage;


@Controller
@Component
@RequestMapping("/upload")
public class UploadController {
	@RequestMapping(value = "fileUpload",method = RequestMethod.POST)
	@ResponseBody
	public  Object editImgUpload(MultipartFile myFileName,HttpSession session,HttpServletRequest request) throws IllegalStateException, IOException {
		//初始化新文件名字
		String realName="";
		//先判断图片是否为空
		if (myFileName != null) {
		//获取上传文件原始完整名
		String fileName = myFileName.getOriginalFilename();
		//获取上传原始文件后缀名
		String fileNameExtension = fileName.substring(fileName.indexOf("."), fileName.length() );
		// 生成实际存储的真实文件名
		realName = UUID.randomUUID().toString() + fileNameExtension;
		//自己定义的上传目录
		String realPath = session.getServletContext().getRealPath("/upload");
		
		File uploadFile = new File(realPath, realName);
		//允许用户利用multipart传到服务器
		myFileName.transferTo(uploadFile);
		}
		//编辑图片引用的URL放入msg辅助类json返回给富文本编辑器回显
		String [] str = {request.getContextPath() + "/upload/" + realName};
	        editorImageMassage emsg=new editorImageMassage();
	        emsg.setData(str);
	        emsg.setErrno("0");
	      
	        return emsg;
	}
}
