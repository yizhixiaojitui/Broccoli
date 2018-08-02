package cn.broccoli.blog.mapper;

import cn.broccoli.blog.po.ArticleSort;
import cn.broccoli.blog.po.ArticleSortExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleSortMapper {
    int countByExample(ArticleSortExample example);

    int deleteByExample(ArticleSortExample example);

    int deleteByPrimaryKey(Integer sortArticleId);

   

    int insertSelective(ArticleSort record);

    List<ArticleSort> selectByExample(ArticleSortExample example);

    ArticleSort selectByPrimaryKey(Integer sortArticleId);

    int updateByExampleSelective(@Param("record") ArticleSort record, @Param("example") ArticleSortExample example);

    int updateByExample(@Param("record") ArticleSort record, @Param("example") ArticleSortExample example);

    int updateByPrimaryKeySelective(ArticleSort record);

    int updateByPrimaryKey(ArticleSort record);
    
    int insert(ArticleSort record);
    
    int selectRepeat(ArticleSort record);
}