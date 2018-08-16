package cn.broccoli.blog.service;


import cn.broccoli.blog.po.Article;
import cn.broccoli.blog.po.BlogInfo;
import cn.broccoli.blog.util.Page;

public interface ArticleService {
      
	public Page newestItems(int pageIndex);
	
	public BlogInfo getBlogInfoById(int blogId) throws Exception;
	
	public int insert(Article record);
	
}
