package cn.broccoli.blog.mapper;

import cn.broccoli.blog.po.Article;
import cn.broccoli.blog.po.ArticleExample;
import cn.broccoli.blog.po.BlogInfo;
import cn.broccoli.blog.po.NewestBlog;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleMapper {
    int countByExample(ArticleExample example);

    int deleteByExample(ArticleExample example);

    int deleteByPrimaryKey(Short articleId);

    int insert(Article record);

    int insertSelective(Article record);

    List<Article> selectByExampleWithBLOBs(ArticleExample example);

    List<Article> selectByExample(ArticleExample example);

    Article selectByPrimaryKey(Short articleId);

    int updateByExampleSelective(@Param("record") Article record, @Param("example") ArticleExample example);

    int updateByExampleWithBLOBs(@Param("record") Article record, @Param("example") ArticleExample example);

    int updateByExample(@Param("record") Article record, @Param("example") ArticleExample example);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
    
    
    List<NewestBlog> getByExampleNewBlogItems(int pageIndex);
    
    int getBlogRowCount();
    
    BlogInfo getBlogInfobyId(int blogId);
}