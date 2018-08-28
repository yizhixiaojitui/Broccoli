package cn.broccoli.blog.controller;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
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
import cn.broccoli.blog.util.PhotoUtils;
import cn.broccoli.blog.util.addArticleUtil;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/home")
public class IndexController {
	@Autowired
	private ArticleService articleService;
	@Autowired
	private ArticleSortService articleSortService;

	static Logger logger = Logger.getLogger(IndexController.class.getName());

	// 进入主页
	@RequestMapping("/index")
	public ModelAndView ShowBlog(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		Page page = articleService.newestItems(1);
		request.setAttribute("page", page);
		modelAndView.setViewName("index");
		logger.info("进入首页");
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
	public ModelAndView test2(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index3");
		return modelAndView;
	}

	@RequestMapping("/test3")
	public void test3(HttpServletRequest request, HttpSession session, String base64Data) throws Exception {
		System.out.println(base64Data);
		if (base64Data == null || "".equals(base64Data)) {
			throw new Exception("上传失败，上传图片数据为空");
		}
		String realName = UUID.randomUUID().toString() + ".jpg";
		String realPath = session.getServletContext().getRealPath("/upload/image/u");
		System.out.println(realPath + realName);
		if (PhotoUtils.Base64ToImage(PhotoUtils.Base64ToData(base64Data), realPath + realName)) {
			System.out.println("添加成功！");
		} else {
			System.out.println("添加失败！");
		}
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

		try {
			//获取分类id
			Integer sort_id = articleSortService.selectRepeat(article.getUserId(), articleUtil.getSortArticleName());
			System.out.println("sort_id"+sort_id);
			//判断获取id
			if (sort_id ==null ||"".equals(sort_id)) {
			// 个人分类不存在 插入
			sort_id = articleSortService.insert(article.getUserId(), articleUtil.getSortArticleName());
			}
			article.setSortArticleId(sort_id);
			articleService.insert(article);
			json.put("msg", 1);

		} catch (Exception e) {
			json.put("msg", 0);
			e.printStackTrace();
		}

		return json;
	}

}
