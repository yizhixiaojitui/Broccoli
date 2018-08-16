package cn.broccoli.blog.po;

import java.util.Date;

public class BlogInfo {
	private Short articleId;

	private String articleName;

	private Date articleTime;

	private Integer articleClick;

	private String articleContent;

	private Integer userId;

	private String userNikename;

	private String userDescription;

	private String userImageUrl;

	private String sortArticleName;

	private String articleLabel;
	 
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

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserNikename() {
		return userNikename;
	}

	public void setUserNikename(String userNikename) {
		this.userNikename = userNikename;
	}

	public String getUserDescription() {
		return userDescription;
	}

	public void setUserDescription(String userDescription) {
		this.userDescription = userDescription;
	}

	public String getUserImageUrl() {
		return userImageUrl;
	}

	public void setUserImageUrl(String userImageUrl) {
		this.userImageUrl = userImageUrl;
	}

	public String getSortArticleName() {
		return sortArticleName;
	}

	public void setSortArticleName(String sortArticleName) {
		this.sortArticleName = sortArticleName;
	}

}
