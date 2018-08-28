package cn.broccoli.blog.service;



public interface ArticleSortService{
      
	public int insert(int userid,String sortArticleName) throws Exception;
	
	public Integer selectRepeat(int userid,String sortArticleName) throws Exception;
}
