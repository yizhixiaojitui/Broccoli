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
		<jsp:include page="inc/header.jsp" />
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
								<a href="#"><img src="${pageContext.request.contextPath }/upload/image/${blog.userImageUrl}" alt=""></a>
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
		<jsp:include page="inc/footer.jsp" />
		</footer>
		<!-- FOOTER END -->

	</div>
	

</body>
</html>