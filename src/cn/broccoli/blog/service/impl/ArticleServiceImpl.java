package cn.broccoli.blog.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import cn.broccoli.blog.mapper.ArticleMapper;
import cn.broccoli.blog.po.Article;
import cn.broccoli.blog.po.BlogInfo;
import cn.broccoli.blog.service.ArticleService;
import cn.broccoli.blog.util.Page;

public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	private ArticleMapper articleMapper;
	@Override
	public Page newestItems(int pageIndex){
		
		
		Page page=new Page();
		
		page.setPageSize(6);
		page.setPageIndex((pageIndex-1)*page.getPageSize());
		page.setRowCount(6);
		page.setPageCount((page.getRowCount()%page.getPageSize()==0)?
				(page.getRowCount()/page.getPageSize()):(page.getRowCount()/page.getPageSize()+1));
		//10/2=0？10/2:10/2+1
		System.out.println("总行数"+page.getRowCount());
		System.out.println("页数"+page.getPageCount());
		page.setResults(articleMapper.getByExampleNewBlogItems(page.getPageIndex()));
		return page;
	}
	@Override
	public BlogInfo getBlogInfoById(int blogId) throws Exception{
		
		return articleMapper.getBlogInfobyId(blogId);
	}
	@Override
	public int insert(Article record) {
		
		return articleMapper.insert(record);
	}

}
