package cn.broccoli.blog.po;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 
 *最新文章 
 *
 */
public class NewestBlog implements Serializable{
    
	private Short articleId;// ID
	
    private String articleName;//文章名称
    
	private Date articleTime;//文章更新时间
	
	private Integer articleClick;//文章点击量
	
	private String sortArticleName;//文章类别
	
	private String userNikename;//作者名称
	
	private String userImageUrl;//作者头像URL 
	
	private String articleLabel;//文章标签
	
	
	public String getArticleLabel() {
		return articleLabel;
	}

	public void setArticleLabel(String articleLabel) {
		this.articleLabel = articleLabel;
	}

	public Short getArticleId() {
		return articleId;
	}

	public void setArticleId(Short articleId) {
		this.articleId = articleId;
	}

	public String getArticleName() {
		return articleName;
	}

	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}

	public Date getArticleTime() {
		return articleTime;
	}

	public void setArticleTime(Date articleTime) {
		this.articleTime = articleTime;
	}

	public Integer getArticleClick() {
		return articleClick;
	}

	public void setArticleClick(Integer articleClick) {
		this.articleClick = articleClick;
	}

	public String getSortArticleName() {
		return sortArticleName;
	}

	public void setSortArticleName(String sortArticleName) {
		this.sortArticleName = sortArticleName;
	}

	public String getUserNikename() {
		return userNikename;
	}

	public void setUserNikename(String userNikename) {
		this.userNikename = userNikename;
	}

	public String getUserImageUrl() {
		return userImageUrl;
	}

	public void setUserImageUrl(String userImageUrl) {
		this.userImageUrl = userImageUrl;
	}

	
	
	
}
