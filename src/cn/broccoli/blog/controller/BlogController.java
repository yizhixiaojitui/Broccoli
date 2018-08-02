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
	@RequestMapping("/query")//根据ID查询文章，并跳转到文章详情页面
	public ModelAndView getBlogInfo(HttpServletRequest request,String bid) {
		ModelAndView modelAndView=new ModelAndView();
		BlogInfo info=new BlogInfo();
		try {
			info=articleService.getBlogInfoById(Integer.parseInt(bid));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(info.getSortArticleName()+"嗨");
		request.setAttribute("blog", info);
		modelAndView.setViewName("index2");
		return modelAndView;
	}
}
