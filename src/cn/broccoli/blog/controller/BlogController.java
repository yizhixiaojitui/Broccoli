package cn.broccoli.blog.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.broccoli.blog.po.BlogInfo;
import cn.broccoli.blog.service.ArticleService;

@Controller
@RequestMapping("/blog")
public class BlogController {
	@Autowired
	private ArticleService articleService;
	
}
