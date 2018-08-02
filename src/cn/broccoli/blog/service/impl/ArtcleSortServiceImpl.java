package cn.broccoli.blog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import cn.broccoli.blog.mapper.ArticleSortMapper;
import cn.broccoli.blog.po.ArticleSort;
import cn.broccoli.blog.service.ArticleSortService;

public class ArtcleSortServiceImpl implements ArticleSortService{

	@Autowired 
	private ArticleSortMapper articleMapper;
	@Override
	public int insert(int userid,String sortArticleName) throws Exception{
		ArticleSort artcle=new ArticleSort();
		artcle.setUserId(userid);
		artcle.setSortArticleName(sortArticleName);
		articleMapper.insert(artcle);
		return artcle.getSortArticleId();
	}
	@Override
	public int selectRepeat(int userid, String sortArticleName) throws Exception {
		ArticleSort artcle=new ArticleSort();
		artcle.setUserId(userid);
		artcle.setSortArticleName(sortArticleName);
		return articleMapper.selectRepeat(artcle);
	}

}
