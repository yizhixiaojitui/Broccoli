<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>${blog.articleName }</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width" />

<!--[if lt IE 9]>
<script type="text/javascript" src="layout/plugins/html5.js"></script>
<![endif]-->
<jsp:include page="inc/head.jsp" />
<jsp:include page="inc/login-popup.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>
</style>
</head>

<body>
	<div id="web_bg"
		style="background-image: url(${pageContext.request.contextPath }/images/dvaaa.jpg);"></div>
	<div class="wrapper sticky_footer;">
		<!-- HEADER BEGIN -->
		<header>
		<div id="header">
			<section class="top">
			<div class="inner">
				<div class="fl">
					<div class="block_top_menu">
						<ul>
							<li class="current"><a href="index.html">主页</a></li>
							<li><a href="#">相册</a></li>
							<li><a href="typography.html">说说</a></li>
							<li><a href="contact.html">Blog</a></li>
						</ul>
					</div>
				</div>
				<div class="fr">
					<div class="block_top_menu" id="user_top">
						<ul>
							<c:if test="${user !='' && user !=null}">
								<li>Hi,</li>
								<li class="current"><a href="#">${user.userName } </a></li>
								<li><a href="javascript:void(0);" onclick="exitlogin();">退出
								</a></li>
							</c:if>
							<c:if test="${user ==''|| user ==null}">
								<li class="current"><a href="javascript:void(0);"
									onclick="login_show();">登录</a></li>
								<li><a href="javascript:void(0);" onclick="regist_show();">注册</a></li>
							</c:if>
							<li><a href="#">订阅</a></li>
						</ul>
					</div>
					<div class="block_social_top">
						<ul>
							<li><a href="#" class="fb">Facebook</a></li>
						</ul>
					</div>
				</div>
				<div class="clearboth"></div>
			</div>
			</section>
			<section class="bottom">
			<div class="inner" id="bottom_inner">
				<div id="logo_top">
					<a href="index.html"><img
						src="${pageContext.request.contextPath }/images/logo_top.png"
						alt="BusinessNews" title="BusinessNews" /></a>
				</div>

				<div class="fr">
					<div class="block_languages">
						<div class="text">
							<p>语言:</p>
						</div>
						<ul>
							<li class="current"><a href="#" class="eng">English</a></li>
							<li><a href="#" class="french">French</a></li>
							<li><a href="#" class="ger">German</a></li>
						</ul>
						<div class="clearboth"></div>
					</div>
					<div class="block_search_top">
						<form action="#" />

						<div class="field">
							<input type="text" class="w_def_text" title="输入关键字" />
						</div>
						<input type="submit" class="button" value="Search" />
						<div class="clearboth"></div>
						</form>
					</div>
				</div>
				<div class="clearboth"></div>
			</div>
			</section>

		</div>
		</header>
		<!-- HEADER END -->

		<!-- CONTENT BEGIN -->
		<div id="content" class="right_sidebar">
			<div class="inner">
				<div class="general_content">
					<div class="main_content">

						<div class="block_breadcrumbs">
							<div class="text">
								<p>
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">你在这里：</font></font>
								</p>
							</div>

							<ul>
								<li><a href="index.html"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">家</font></font></a></li>
								<li><font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">阻止引用</font></font></li>
							</ul>
						</div>
						<div class="separator" style="height: 30px;"></div>

						<h2>
							<font style="vertical-align: inherit;"><font
								style="vertical-align: inherit;">${blog.articleName }</font></font>
						</h2>
						<div class="info">
							<div class="date">
								<p>
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;"><fmt:formatDate value="${blog.articleTime }" pattern="yyyy-MM-dd HH:mm" /></font></font>
								</p>
							</div>
							<div class="author">
								<p>
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">作者：</font></font><a href="#"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">${blog.userNikename }</font></font></a>
								</p>
							</div>

							<div class="r_part">
								<div class="category">
									<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">个人分类：</font></font>
										<a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">${blog.sortArticleName }</font></font></a>
									</p>
								</div>
								
							</div>
						</div>


						<p>
							<font style="vertical-align: inherit;"><font
								style="vertical-align: inherit;">${blog.articleContent }</font></font>
						</p>

						
						<article class="block_single_post">
						<div class="line_3" style="margin: 4px 0px 23px;"></div>
						<div class="about_author">
							<h4>
								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">关于作者</font></font>
							</h4>

							<div class="photo">
								<a href="#"><img src="${pageContext.request.contextPath }/images/${blog.userImageUrl}" alt=""></a>
							</div>
							<div class="bio">
								<p class="name">
									<a href="#"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">${blog.userNikename }</font></font></a>
								</p>
								<p>
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">${blog.userDescription }</font></font>
								</p>
							</div>

							<div class="clearboth"></div>
						</div>
						<div class="line_3" style="margin: 17px 0px 23px;"></div>
						</article>
						<div class="block_post_tags">
							<p>
								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">标签：</font></font><a href="#"><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">商业，</font></font></a><a href="#"><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">股市</font></font></a>
							</p>
						</div>
						<div class="block_post_social">
							<h4>
								<span><font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">XIAO</font></font></span>
							</h4>

							<section class="rating">
							<p class="title">
								<span><font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">评分</font></font></span>
							</p>

							<ul>
								<li><span><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">${blog.articleClick }个</font></font></span><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">视图</font></font></li>
								<li><span><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">4条</font></font></span><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">评论</font></font></li>
							</ul>
							</section>

							<section class="subscribe">
							<p class="title">
								<span><font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">订阅</font></font></span>
							</p>
							<a href="#"><font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">订阅评论</font></font></a> </section>

							<section class="recommend">
							<p class="title">
								<span><font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">推荐给朋友</font></font></span>
							</p>

							<ul>
								<li><a
									href="http://www.facebook.com/share.php?u=http://google.com"
									target="_blank"><img src="images/button_social_1.png"
										alt=""></a></li>
								<li><a
									href="https://twitter.com/share?text=I like BusinessNews Template and You?"
									target="_blank"><img src="images/button_social_2.png"
										alt=""></a></li>
								<li><a
									href="https://plusone.google.com/_/+1/confirm?url=http://google.com"
									target="_blank"><img src="images/button_social_3.png"
										alt=""></a></li>
								<li><a
									href="http://pinterest.com/pin/create/button/?url=http://google.com"
									target="_blank"><img src="images/button_social_4.png"
										alt=""></a></li>
							</ul>
							</section>

							<div class="clearboth"></div>
						</div>
						<div class="line_2" style="margin: 22px 0px 29px;"></div>
						<div class="block_related_posts">
							<h3>
								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">相关文章</font></font>
							</h3>

							<div class="block_main_news">
								<article class="block_news_post">
								<div class="f_pic">
									<a href="news_post.html"
										class="general_pic_hover scale_small initialized"><img
										src="images/pic_main_news_6.jpg" alt=""><span
										class="hover"><span class="icon"></span></span></a>
								</div>
								<p class="category">
									<a href="#"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">摄影</font></font></a>
								</p>
								<p class="title">
									<a href="news_post.html"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">许多桌面出版软件包和网页编辑器。</font></font></a>
								</p>
								<div class="info">
									<div class="date">
										<p>
											<font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">2012年7月11日</font></font>
										</p>
									</div>
									<a href="#" class="views"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">183</font></font></a>

									<div class="clearboth"></div>
								</div>
								</article>

								<article class="block_news_post">
								<div class="f_pic">
									<a href="news_post.html"
										class="general_pic_hover scale_small initialized"><img
										src="images/pic_main_news_8.jpg" alt=""><span
										class="hover" style="display: none;"><span class="icon"
											style="left: 0px; top: auto; right: auto; bottom: -130px;"></span></span></a>
								</div>
								<p class="category">
									<a href="#"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">运动</font></font></a>
								</p>
								<p class="title">
									<a href="news_post.html"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">许多桌面出版软件包和网页编辑器。</font></font></a>
								</p>
								<div class="info">
									<div class="date">
										<p>
											<font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">2012年7月11日</font></font>
										</p>
									</div>
									<a href="#" class="views"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">183</font></font></a>

									<div class="clearboth"></div>
								</div>
								</article>

								<article class="block_news_post">
								<div class="f_pic">
									<a href="news_post.html"
										class="general_pic_hover scale_small initialized"><img
										src="images/pic_main_news_16.jpg" alt=""><span
										class="hover" style="display: none;"><span class="icon"
											style="left: 0px; top: auto; right: auto; bottom: -130px;"></span></span></a>
								</div>
								<p class="category">
									<a href="#"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">商业</font></font></a>
								</p>
								<p class="title">
									<a href="news_post.html"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">许多桌面出版软件包和网页编辑器。</font></font></a>
								</p>
								<div class="info">
									<div class="date">
										<p>
											<font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">2012年7月11日</font></font>
										</p>
									</div>
									<a href="#" class="views"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">183</font></font></a>

									<div class="clearboth"></div>
								</div>
								</article>

								<article class="block_news_post">
								<div class="f_pic">
									<a href="news_post.html"
										class="general_pic_hover scale_small initialized"><img
										src="images/pic_main_news_4.jpg" alt=""><span
										class="hover" style="display: none;"><span class="icon"
											style="left: 0px; top: auto; right: auto; bottom: -130px;"></span></span></a>
								</div>
								<p class="category">
									<a href="#"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">视频</font></font></a>
								</p>
								<p class="title">
									<a href="news_post.html"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">许多桌面出版软件包和网页编辑器。</font></font></a>
								</p>
								<div class="info">
									<div class="date">
										<p>
											<font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">2012年7月11日</font></font>
										</p>
									</div>
									<a href="#" class="views"><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">183</font></font></a>

									<div class="clearboth"></div>
								</div>
								</article>

								<div class="clearboth"></div>
							</div>
						</div>
						<div class="line_2" style="margin: 5px 0px 28px;"></div>
						<div class="block_comments">
							<h2>
								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">4评论</font></font>
							</h2>

							<div class="comment">
								<div class="userpic">
									<a href="#"><img src="images/ava_default_1.jpg" alt=""></a>
								</div>
								<div class="content">
									<p class="name">
										<a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">John Doe</font></font></a>
									</p>
									<p class="info">
										<span class="date"><font
											style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">2012年2月16日下午4:43 </font></font></span><a
											href="#" class="control"><font
											style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">回复</font></font></a>
									</p>
									<p class="text">
										<font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">确立的事实是，读者会被页面的可读内容分散注意力。</font><font
											style="vertical-align: inherit;">在看它的布局。</font><font
											style="vertical-align: inherit;">使用Lorem
												Ipsum的一点是，它具有或多或少正常的字母分布，而不是使用。</font></font>
									</p>
								</div>
								<div class="clearboth"></div>
								<div class="line_3"></div>
							</div>

							<div class="comment">
								<div class="userpic">
									<a href="#"><img src="images/ava_default_1.jpg" alt=""></a>
								</div>
								<div class="content">
									<p class="name">
										<a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">萨拉戈登</font></font></a>
									</p>
									<p class="info">
										<span class="date"><font
											style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">2012年2月16日下午4:43 </font></font></span><a
											href="#" class="control"><font
											style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">回复</font></font></a>
									</p>
									<p class="text">
										<font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">被页面的可读内容分散。</font><font
											style="vertical-align: inherit;">在看它的布局。</font><font
											style="vertical-align: inherit;">使用Lorem
												Ipsum的意义在于它具有或多或少正常的字母分布，相反。</font></font>
									</p>
								</div>
								<div class="clearboth"></div>
								<div class="line_3"></div>

								<div class="comment">
									<div class="userpic">
										<a href="#"><img src="images/ava_default_1.jpg" alt=""></a>
									</div>
									<div class="content">
										<p class="name">
											<a href="#"><font style="vertical-align: inherit;"><font
													style="vertical-align: inherit;">艾伦Foylee</font></font></a>
										</p>
										<p class="info">
											<span class="date"><font
												style="vertical-align: inherit;"><font
													style="vertical-align: inherit;">2012年2月16日下午4:43 </font></font></span><a
												href="#" class="control"><font
												style="vertical-align: inherit;"><font
													style="vertical-align: inherit;">回复</font></font></a>
										</p>
										<p class="text">
											<font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">一页的内容。</font><font
												style="vertical-align: inherit;">在看它的布局。</font><font
												style="vertical-align: inherit;">使用Lorem
													Ipsum的要点是它有一个或多或少正常的字母分布。</font></font>
										</p>
									</div>
									<div class="clearboth"></div>
									<div class="line_3"></div>
								</div>
							</div>

							<div class="comment">
								<div class="userpic">
									<a href="#"><img src="images/ava_default_1.jpg" alt=""></a>
								</div>
								<div class="content">
									<p class="name">
										<a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">玛蒂尔达国王</font></font></a>
									</p>
									<p class="info">
										<span class="date"><font
											style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">2012年2月16日下午4:43 </font></font></span><a
											href="#" class="control"><font
											style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">回复</font></font></a>
									</p>
									<p class="text">
										<font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">确立的事实是，读者会被页面的可读内容分散注意力。</font><font
											style="vertical-align: inherit;">在看它的布局。</font><font
											style="vertical-align: inherit;">使用Lorem
												Ipsum的一点是，它具有或多或少正常的字母分布，而不是使用。</font></font>
									</p>
								</div>
								<div class="clearboth"></div>
								<div class="line_3"></div>
							</div>

						</div>
						<div class="separator" style="height: 30px;"></div>
						<div class="block_leave_reply">
							<h3>
								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">发表评论</font></font>
							</h3>
							<p class="text">
								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">您的电子邮件地址不会被公开。</font><font
									style="vertical-align: inherit;">必填项已标记</font></font><span><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">*</font></font></span>
							</p>

							<form class="w_validation" action="#">
								<p>
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">姓名</font></font><span><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">*</font></font></span>
								</p>
								<div class="field">
									<input type="text" class="req">
								</div>

								<p>
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">电子邮件</font></font><span><font
										style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">*</font></font></span>
								</p>
								<div class="field">
									<input type="text" class="req">
								</div>

								<p>
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">评论</font></font>
								</p>
								<div class="textarea">
									<textarea cols="1" rows="1"></textarea>
								</div>

								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;"><input type="submit"
										class="general_button" value="发表评论"></font></font>
							</form>
						</div>
					</div>
					<div class="sidebar" id="right_main" style="display: none">
						<div class="separator" style="height: 31px;">
							<div class="block_clock">
								<p>
									Time&nbsp;<span id="time">10:00</span>
								</p>
							</div>
						</div>
						<div class="block_popular_posts">
							<h4>热门文章</h4>
							<div class="article">
								<div class="pic">
									<a href="#" class="w_hover"> <img
										src="${pageContext.request.contextPath }/images/pic_popular_post_1.jpg"
										alt="" /> <span></span>
									</a>
								</div>
								<div class="text">
									<p class="title">
										<a href="#">软件包和网页编辑器是其默认文本。</a>
									</p>
									<div class="date">
										<p>2015年3月12日</p>
									</div>
									<div class="icons">
										<ul>
											<li><a href="#" class="views">41</a></li>
											<li><a href="#" class="comments">22</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="line_3"></div>
							<div class="article">
								<div class="pic">
									<a href="#" class="w_hover"> <img
										src="${pageContext.request.contextPath }/images/pic_popular_post_2.jpg"
										alt="" /> <span></span>
									</a>
								</div>
								<div class="text">
									<p class="title">
										<a href="#">软件包和网页编辑器是其默认文本。</a>
									</p>
									<div class="date">
										<p>2012年5月7日</p>
									</div>
									<div class="icons">
										<ul>
											<li><a href="#" class="views">24</a></li>
											<li><a href="#" class="comments">16</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="line_3"></div>
							<div class="article">
								<div class="pic">
									<a href="#" class="w_hover"> <img
										src="${pageContext.request.contextPath }/images/pic_popular_post_3.jpg"
										alt="" /> <span></span>
									</a>
								</div>
								<div class="text">
									<p class="title">
										<a href="#">软件包和网页编辑器是其默认文本。</a>
									</p>
									<div class="date">
										<p>2012年8月9日</p>
									</div>
									<div class="icons">
										<ul>
											<li><a href="#" class="views">33</a></li>
											<li><a href="#" class="comments">25</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="line_2"></div>
						</div>
						<div class="separator" style="height: 31px;"></div>
						<div class="block_popular_stuff">
							<h4>视频</h4>
							<div class="content">
								<a href="#" class="view_all">显示所有视频</a>
								<div class="media">
									<a href="http://www.youtube.com/watch?v=ySIvism2af8"
										class="general_pic_hover play no_fx" data-rel="prettyPhoto"
										title="Popular Video"><img
										src="${pageContext.request.contextPath }/images/pic_pop_video.jpg"
										alt="" /></a>
								</div>
								<p>
									<a href="blog_post_w_video.html">发布软件包和网页编辑器的默认模型。</a> <img
										src="${pageContext.request.contextPath }/images/icon_video.gif"
										alt="" />
								</p>
								<p class="date">2012年7月11日</p>
							</div>
							<div class="info">
								<ul>
									<li class="comments"><a href="#">115</a></li>
									<li class="views"><a href="#">220</a></li>
								</ul>
							</div>
							<div class="clearboth"></div>
							<div class="line_2"></div>
						</div>
						<div class="separator" style="height: 31px;"></div>
						<div class="block_calendar">
							<h4>日期</h4>
							<div class="line_2"></div>
						</div>
						<div class="separator" style="height: 31px;"></div>
						<div class="block_twitter_widget">
							<h4>标签</h4>
							<div class="lnk_follow">
								<a href="#" target="_blank">标签</a>
							</div>
							<div class="block_tags">
								<ul>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">商业</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">科学</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">conferece</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">照片</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">教育</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">AI</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">运动</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">移动</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">技术</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">电脑</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">视频</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">苹果</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">新闻</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">欧元</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">文化</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">室内</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">Midle东部</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">设计</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">2012年欧元</font></font></a></li>
									<li><a href="#"><font style="vertical-align: inherit;"><font
												style="vertical-align: inherit;">花卉</font></font></a></li>
								</ul>
							</div>
							<div class="line_2"></div>
						</div>
						<div class="separator" style="height: 31px;"></div>
						<div class="block_popular_stuff">
							<h4>流行照片</h4>
							<div class="content">
								<a href="#" class="view_all">显示所有照片</a>
								<div class="media">
									<a
										href="${pageContext.request.contextPath }/images/pic_pop_photo_big.jpg"
										class="general_pic_hover zoom no_fx" data-rel="prettyPhoto"
										title="Popular Photo"><img
										src="${pageContext.request.contextPath }/images/pic_pop_photo.jpg"
										alt="" /></a>
								</div>
								<p>
									<a href="blog_post_w_slider.html">编辑他们的默认模型文本，搜索会发现很多。</a> <img
										src="${pageContext.request.contextPath }/images/icon_photo.gif"
										alt="" />
								</p>
								<p class="date">2012年7月11日</p>
							</div>
							<div class="info">
								<ul>
									<li class="comments"><a href="#">100</a></li>
									<li class="views"><a href="#">134</a></li>
								</ul>
							</div>
							<div class="clearboth"></div>
							<div class="line_2"></div>
						</div>
						<div class="separator" style="height: 31px;"></div>
						<div class="block_newsletter">
							<h4>Newsletter</h4>
							<form action="#" />

							<div class="field">
								<input type="text" class="w_def_text"
									title="Enter Your Email Addres" />
							</div>
							<input type="submit" class="button" value="Subscribe" />
							<div class="clearboth"></div>
							</form>
						</div>
					</div>
					<div class="clearboth"></div>
				</div>
			</div>
		</div>
		<!-- CONTENT END -->
		<footer id="bodyfooter" style="display:none">
		<div id="footer" style="display: none">
			<section class="top">
			<div class="inner">
				<div id="logo_bottom">
					<a href="index.html"><img
						src="${pageContext.request.contextPath }/images/logo_bottom.png"
						alt=""></a>
				</div>
				<div class="block_to_top">
					<a href="#"><font style="vertical-align: inherit;"><font
							style="vertical-align: inherit;">回到顶部</font></font></a>
				</div>
			</div>
			</section>
			<section class="bottom">
			<div class="inner">
				<div class="fr">
					<div class="block_menu_footer">
						<ul>
							<li><a href="business.html"><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">主页</font></font></a></li>
							<li><a href="technology.html"><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">相册</font></font></a></li>
							<li><a href="education.html"><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">说说</font></font></a></li>
							<li><a href="media.html"><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">Blog</font></font></a></li>
						</ul>
					</div>
					<div class="block_social_footer">
						<ul>
							<li><a href="#" class="fb"><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">Facebook的</font></font></a></li>
							<li><a href="#" class="tw"><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">推特</font></font></a></li>
							<li><a href="#" class="rss"><font
									style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">RSS</font></font></a></li>
						</ul>
					</div>
				</div>
				<div class="block_copyrights">
					<p>
						<font style="vertical-align: inherit;"><font
							style="vertical-align: inherit;">Copyright © 2018
								xiaojitui. All Rights Reserved</font></font>
					</p>
				</div>
			</div>
			</section>
		</div>
		</footer>
		<!-- FOOTER END -->

	</div>
	<div class="login_box">
		<a href="javascript:void(0);" onclick="login_box_close();"
			class="close">Close</a>
		<div id="landing" class="landing">登录</div>
		<div id="registered" class="registered">注册</div>
		<div class="fix"></div>
		<form id="loginform">
			<div id="landing-content">
				<div id="photo">
					<img
						src="${pageContext.request.contextPath }/images/ava_default_3.jpg" />
				</div>
				<div class="inp">
					<input type="text" id="username" placeholder="用户名" />
				</div>
				<div class="inp">
					<input type="password" id="password" placeholder="密码" />
				</div>
				<div class="captcha">
					<div class="captcha_input" style="float: left;">
						<input type="text" placeholder="验证码" id="user_input_verifyCode" />
					</div>
					<div class="captcha_img" style="float: left;">
						<img class="captcha2"
							src="${pageContext.request.contextPath }/user/getVerifyCode.action"
							id="verifyCodeImage" onclick="javascript:changeImage();"
							title="点击图片更换验证码" />
					</div>
				</div>
				<div class="login" onclick="javascript:login();">登录</div>
				<div id="bottom">
					<span id="registeredtxt"><a href="javascript:void(0);"
						onclick="on_regist();">还没有账号？</a></span><span id="forgotpassword"><a
						href="javascript:void(0);">忘记密码?</a></span>
				</div>
				<div id="msg">
					<span id="msg_txt"></span>
				</div>
			</div>
		</form>
		<form id="regist_form">
			<div id="registered-content">
				<div class="inp">
					<input type="text" id="nikename" name="nikename"
						placeholder="请输入昵称" />
				</div>
				<div class="inp">
					<input type="text" name="username" id="rusername"
						placeholder="请输入用户名" />
				</div>
				<div class="inp">
					<input type="password" id="rpassword" name="password"
						placeholder="请输入密码" />
				</div>
				<div class="inp">
					<input type="password" id="repassword" placeholder="请再次输入密码" />
				</div>
				<div class="inp">
					<input type="text" id="remail" name="email" placeholder="电子邮箱" />
				</div>
				<div class="inp">
					<input type="text" id="code" name="code" placeholder="邀请码" />
				</div>
				<div class="captcha">
					<div class="captcha_input" style="float: left;">
						<input type="text" placeholder="验证码" name="verifyCode"
							id="re_user_input_verifyCode" />
					</div>
					<div class="captcha_img" style="float: left;">
						<img class="captcha2"
							src="${pageContext.request.contextPath }/user/getVerifyCode.action"
							id="rverifyCodeImage" onclick="javascript:changeImage2();"
							title="点击图片更换验证码" />
					</div>
				</div>
				<div class="login" onclick="javascript:regist();">立即注册</div>
				<div id="msg">
					<span id="regist_msg_txt"></span>
				</div>
			</div>
		</form>
	</div>

</body>
</html>