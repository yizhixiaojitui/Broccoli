package cn.broccoli.blog.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.broccoli.blog.po.Article;
import cn.broccoli.blog.service.ArticleService;
import cn.broccoli.blog.service.ArticleSortService;
import cn.broccoli.blog.util.CusAccessObjectUtil;
import cn.broccoli.blog.util.Page;
import cn.broccoli.blog.util.addArticleUtil;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/home")
public class IndexController {
	@Autowired
	private ArticleService articleService;
	@Autowired
	private ArticleSortService articleSortService;

	// 进入主页
	@RequestMapping("/index")
	public ModelAndView ShowBlog(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		Page page = articleService.newestItems(1);
		request.setAttribute("page", page);
		modelAndView.setViewName("index");
		System.out.println("进入首页");
		return modelAndView;
	}

	// 测试json
	@ResponseBody
	@RequestMapping("/json")
	public Object newPaging(HttpServletRequest request, String pageIndex) throws Exception {
		System.out.println("pageIndex:" + Integer.parseInt(pageIndex));
		Page page = articleService.newestItems(Integer.parseInt(pageIndex));
		JSONObject json = new JSONObject();
		json.put("page", page);
		return page;
	}

	// 测试
	@RequestMapping("/test")
	public ModelAndView test(HttpServletRequest request) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index4");
		return modelAndView;
	}
	// 测试
		@RequestMapping("/test2")
		public ModelAndView test2(HttpServletRequest request) throws Exception {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("index3");
			return modelAndView;
		}
	@ResponseBody
	@RequestMapping("/addBlog")
	public Object addBlog(HttpSession session, HttpServletRequest request,
			@ModelAttribute("articleUtil") addArticleUtil articleUtil) {
		// @ModelAttribute("articleUtil") addArticleUtil articleUtil
		Article article = new Article();
		JSONObject json = new JSONObject();
		
			article.setArticleIp(CusAccessObjectUtil.getIpAddress(request));
			article.setArticleName(articleUtil.getArticleName());
			article.setArticleLabel(articleUtil.getArticleLabel());
			article.setArticleTime(new Date());
			article.setArticleClick(0);
			article.setArticleType(articleUtil.getArticleType());
			article.setArticleContent(articleUtil.getArticleContent());
			article.setArticleUp((byte) 0);
			article.setArticleSupport((byte) 0);
			article.setTypeId((byte) 0);
			article.setUserId(10001);

			// System.out.println(i);
			try {
				if (articleSortService.selectRepeat(article.getUserId(), articleUtil.getSortArticleName()) == 0) {
					article.setSortArticleId(articleSortService.insert(article.getUserId(), articleUtil.getSortArticleName()));
					if(articleService.insert(article)>0) {
						
						json.put("msg", 0);
					}
				} else {
					json.put("msg", 1);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		return json;
	}
		
	

}
