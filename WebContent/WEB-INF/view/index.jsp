<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>一只小鸡腿</title>
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

<body >
   <div id="web_bg" style="background-image: url(${pageContext.request.contextPath }/images/dvaaa.jpg);"></div>
<div class="wrapper sticky_footer;" > 
  <!-- HEADER BEGIN -->
  <header>
    <jsp:include page="inc/header.jsp" />
  </header>
  <!-- HEADER END --> 
  
  <!-- CONTENT BEGIN -->
  <div id="content" class="right_sidebar">
    <div class="inner">
      <div class="general_content">
        <div class="main_content" id="left_main" style="display:none">
          <div class="block_special_topic">
            <div class="type">
              <p>系统通知</p>
            </div>
            <div class="title">
              <p><a href="#">这是一条测试...</a></p>
            </div>
          </div>
          <div class="separator" style="height:17px;"></div>
          <div class="block_home_slider">
            <div id="home_slider" class="flexslider">
              <ul class="slides">
                <li>
                  <div class="slide"> <img src="${pageContext.request.contextPath }/images/pic_home_slider_1.jpg" alt="" />
                    <div class="caption">
                      <p class="title">许多桌面出版软件包和网页</p>
                      <p>可用的段落有很多变体，但大多数变体。</p>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="slide"> <img src="${pageContext.request.contextPath }/images/pic_home_slider_2.jpg" alt="" />
                    <div class="caption">
                      <p class="title">可用的段落有很多变体，但大多数变体。</p>
                      <p>可用的段落有很多变体，但大多数变体。</p>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="slide"> <img src="${pageContext.request.contextPath }/images/pic_home_slider_3.jpg" alt="" />
                    <div class="caption">
                      <p class="title">可用的段落有很多变体，但大多数变体。</p>
                      <p>可用的段落有很多变体，但大多数变体。</p>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="slide"> <img src="${pageContext.request.contextPath }/images/pic_home_slider_4.jpg" alt="" />
                    <div class="caption">
                      <p class="title">可用的段落有很多变体，但大多数变体。</p>
                      <p>可用的段落有很多变体，但大多数变体。</p>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <script type="text/javascript">
								$(function () {
									$('#home_slider').flexslider({
										animation : 'slide',
										 startAt: 0,// Integer: 开始播放的 slide，从 0 开始计数  
										 slideshow: true, // Boolean: 是否自动播放  
										 slideshowSpeed: 5000, // Integer: ms 滚动间隔时间  
										 animationSpeed: 600, // Integer: ms 动画滚动速度
										 direction: "horizontal", // String: 滚动方向 ["horizontal"|"vertical"]  
										controlNav : true,
										directionNav : true,
										animationLoop: true,            // Boolean: 是否循环播放  
										randomize: false,               // Boolean: 是否随机 slide 顺序  
										useCSS : false
									});
									
								});
							</script> 
          </div>
          <div class="line_2" style="margin:34px 0px 28px;"></div>
          <a href="main_news.html" class="lnk_all_news fl">所有文章</a><i class="iconfont">&#xeafc;</i>
          <div class="line_3" style="margin:14px 0px 13px;"></div>
          <div class="block_home_col_1" id="newblogpage">
          <c:forEach items="${page.results }" varStatus="i" var="result">
           
          <div class="block_home_post" >
            
              <div class="pic"> <a href="${pageContext.request.contextPath }/home/query.action?bid=${result.articleId}" class="w_hover"> <img src="${pageContext.request.contextPath }/upload/image/${result.userImageUrl }" alt="${result.articleName }" /> <span></span> </a> </div>
              <div class="text">
                <p class="title">${result.articleName }</p>
                <div class="date">
                  <p><fmt:formatDate value="${result.articleTime }" pattern="yyyy-MM-dd HH:mm" /></p>
                </div>
                <div class="icons">
                  <ul>
                    <li><a href="${pageContext.request.contextPath }/blog/query.action?bid=${result.articleId}" class="views">${result.articleClick }</a></li>
                  </ul> </div></div></div>
            
      
           
            
          
          </c:forEach>
          </div>
         
          <div class="clearboth"></div>
          <script type="text/javascript">
          	
          	
        
          </script>
          <div class="line_3" style="margin:14px 0px 13px;"></div>
          <div class="block_pager"> <a href="#" class="prev">Previous</a> <a href="#" class="next">Next</a><span id="rownum" style="display:none">${page.pageCount }</span>
            <div class="pages">
              <ul id="pagingDiv">
                <c:forEach  var="pagenum" begin="1" end="${page.pageCount }" >
                <c:if test="${pagenum==1 }">
                <li class='current'><a >${pagenum }	</a></li>
                </c:if>
                <c:if test="${pagenum!=1 }">
                <li><a href='javascript:void(0)' onclick='pagingConstruct(${pagenum })'>${pagenum }</a></li>
                </c:if>
                </c:forEach>
              </ul>
            </div>
            <div class="clearboth"></div>
          </div>
          
         
          <div class="clearboth"></div>
          <div class="line_3" style="margin:13px 0px 35px;"></div>
           
          <h3 style="font-size:16px;">主要内容</h3>
          <div class="line_4" style="margin:-4px 0px 18px;"></div>
          <div class="block_topic_news">
            <article class="block_topic_post">
              <p class="title"><a href="news_post.html">现在使用许多桌面出版软件包和网页编辑器。</a></p>
              <div class="f_pic"><a href="news_post.html" class="general_pic_hover scale"><img src="${pageContext.request.contextPath }/images/pic_home_main_news_1.jpg" alt="" /></a></div>
              <p class="text">现在使用许多桌面出版软件包和网页编辑器。</p>
              <div class="info">
                <div class="date">
                  <p>2018年9月25日</p>
                </div>
                <div class="r_part">
                  <div class="category">
                    <p><a href="#">生活</a></p>
                  </div>
                  <a href="#" class="views">183</a> </div>
              </div>
            </article>
            <article class="block_topic_post">
              <p class="title"><a href="news_post.html">现在使用许多桌面出版软件包和网页编辑器。</a></p>
              <div class="f_pic"><a href="news_post.html" class="general_pic_hover scale"><img src="${pageContext.request.contextPath }/images/pic_home_main_news_2.jpg" alt="" /></a></div>
              <p class="text">现在使用许多桌面出版软件包和网页编辑器。</p>
              <div class="info">
                <div class="date">
                  <p>2018年9月25日</p>
                </div>
                <div class="r_part">
                  <div class="category">
                    <p><a href="#">生活</a></p>
                  </div>
                  <a href="#" class="views">183</a> </div>
              </div>
            </article>
            <article class="block_topic_post">
              <p class="title"><a href="news_post.html">现在使用许多桌面出版软件包和网页编辑器。</a></p>
              <div class="f_pic"><a href="news_post.html" class="general_pic_hover scale"><img src="${pageContext.request.contextPath }/images/pic_home_main_news_3.jpg" alt="" /></a></div>
              <p class="text">现在使用许多桌面出版软件包和网页编辑器。</p>
              <div class="info">
                <div class="date">
                  <p>2018年9月25日</p>
                </div>
                <div class="r_part">
                  <div class="category">
                    <p><a href="#">生活</a></p>
                  </div>
                  <a href="#" class="views">183</a> </div>
              </div>
            </article>
            <article class="block_topic_post">
              <p class="title"><a href="news_post.html">现在使用许多桌面出版软件包和网页编辑器。</a></p>
              <div class="f_pic"><a href="news_post.html" class="general_pic_hover scale"><img src="${pageContext.request.contextPath }/images/pic_home_main_news_4.jpg" alt="" /></a></div>
              <p class="text">现在使用许多桌面出版软件包网页编辑器。</p>
              <div class="info">
                <div class="date">
                  <p>2018年9月25日</p>
                </div>
                <div class="r_part">
                  <div class="category">
                    <p><a href="#">生活</a></p>
                  </div>
                  <a href="#" class="views">183</a> </div>
              </div>
            </article>
          </div>
          <div class="line_3" style="margin:20px 0px 24px;"></div>
          <div class="block_pager"> <a href="#" class="prev">Previous</a> <a href="#" class="next">Next</a>
            <div class="pages">
              <ul>
                <li class="current"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
              </ul>
            </div>
            <div class="clearboth"></div>
          </div>
          <div class="line_2" style="margin:24px 0px 35px;"></div>
          <h3 style="font-size:16px;">精选图片</h3>
          <div class="line_4" style="margin:-4px 0px 18px;"></div>
          <div class="block_best_materials">
            <div class="slider">
              <div id="best_materials_slider" class="flexslider">
                <ul class="slides">
                  <li>
                    <div class="block_best_material_post">
                      <div class="f_pic"><a href="news_post.html" class="w_hover"><img src="${pageContext.request.contextPath }/images/pic_home_best_materials_1.jpg" alt="" /><span></span></a></div>
                      <p class="title"><a href="news_post.html">九公主</a></p>
                      <div class="info">
                        <div class="date">
                          <p>2018年5月18日</p>
                        </div>
                        <div class="category">
                          <p><a href="#">动漫</a></p>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="block_best_material_post">
                      <div class="f_pic"><a href="news_post.html" class="w_hover"><img src="${pageContext.request.contextPath }/images/pic_home_best_materials_2.jpg" alt="" /><span></span></a></div>
                      <p class="title"><a href="news_post.html">守望先锋D.VA</a></p>
                      <div class="info">
                        <div class="date">
                          <p>2018年3月27日</p>
                        </div>
                        <div class="category">
                          <p><a href="#">动漫</a></p>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="block_best_material_post">
                      <div class="f_pic"><a href="news_post.html" class="w_hover"><img src="${pageContext.request.contextPath }/images/pic_home_best_materials_3.jpg" alt="" /><span></span></a></div>
                      <p class="title"><a href="news_post.html">漫威猩红女巫</a></p>
                      <div class="info">
                        <div class="date">
                          <p>2018年3月26日</p>
                        </div>
                        <div class="category">
                          <p><a href="#">影视</a></p>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="block_best_material_post">
                      <div class="f_pic"><a href="news_post.html" class="w_hover"><img src="${pageContext.request.contextPath }/images/pic_home_best_materials_4.jpg" alt="" /><span></span></a></div>
                      <p class="title"><a href="news_post.html">鬼刀4K超清大图</a></p>
                      <div class="info">
                        <div class="date">
                          <p>2018年5月2日</p>
                        </div>
                        <div class="category">
                          <p><a href="#">动漫</a></p>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="block_best_material_post">
                      <div class="f_pic"><a href="news_post.html" class="w_hover"><img src="${pageContext.request.contextPath }/images/pic_home_best_materials_5.jpg" alt="" /><span></span></a></div>
                      <p class="title"><a href="news_post.html">鬼刀wolf4K超清白发</a></p>
                      <div class="info">
                        <div class="date">
                          <p>2018年2月23日</p>
                        </div>
                        <div class="category">
                          <p><a href="#">动漫</a></p>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="block_best_material_post">
                      <div class="f_pic"><a href="news_post.html" class="w_hover"><img src="${pageContext.request.contextPath }/images/pic_home_best_materials_6.jpg" alt="" /><span></span></a></div>
                      <p class="title"><a href="news_post.html">D.VA</a></p>
                      <div class="info">
                        <div class="date">
                          <p>2018年1月1日</p>
                        </div>
                        <div class="category">
                          <p><a href="#">游戏</a></p>
                        </div>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <script type="text/javascript">
								$(function() {
									$('#best_materials_slider').flexslider({
										animation : 'slide',
										controlNav : false,
										directionNav : true,
										animationLoop : false,
										slideshow : false,
										itemWidth: 213,
										itemMargin: 0,
										minItems: 1,
										maxItems: 3,
										move: 3,
										useCSS : false
									});
								});
							</script> 
          </div>
          <div class="line_2" style="margin:20px 0px 0px;"></div>
        </div>
        <div class="sidebar" id="right_main" style="display:none">
          <div class="separator" style="height:31px;">
          <div class="block_clock">
            <p>Time&nbsp;<span id="time">10:00</span></p>
          </div>
          </div>
          <div class="block_popular_posts">
            <h4>热门文章</h4>
            <div class="article">
              <div class="pic"> <a href="#" class="w_hover"> <img src="${pageContext.request.contextPath }/images/pic_popular_post_1.jpg" alt="" /> <span></span> </a> </div>
              <div class="text">
                <p class="title"><a href="#">软件包和网页编辑器是其默认文本。</a></p>
                <div class="date">
                  <p>2015年3月12日 </p>
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
              <div class="pic"> <a href="#" class="w_hover"> <img src="${pageContext.request.contextPath }/images/pic_popular_post_2.jpg" alt="" /> <span></span> </a> </div>
              <div class="text">
                <p class="title"><a href="#">软件包和网页编辑器是其默认文本。</a></p>
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
              <div class="pic"> <a href="#" class="w_hover"> <img src="${pageContext.request.contextPath }/images/pic_popular_post_3.jpg" alt="" /> <span></span> </a> </div>
              <div class="text">
                <p class="title"><a href="#">软件包和网页编辑器是其默认文本。</a></p>
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
          <div class="separator" style="height:31px;"></div>
          <div class="block_popular_stuff">
            <h4>视频</h4>
            <div class="content"> <a href="#" class="view_all">显示所有视频</a>
              <div class="media"><a href="http://www.youtube.com/watch?v=ySIvism2af8" class="general_pic_hover play no_fx" data-rel="prettyPhoto" title="Popular Video"><img src="${pageContext.request.contextPath }/images/pic_pop_video.jpg" alt="" /></a></div>
              <p><a href="blog_post_w_video.html">发布软件包和网页编辑器的默认模型。</a> <img src="${pageContext.request.contextPath }/images/icon_video.gif" alt="" /></p>
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
          <div class="separator" style="height:31px;"></div>
          <div class="block_calendar">
            <h4>日期</h4>
            <div class="line_2"></div>
          </div>
          <div class="separator" style="height:31px;"></div>
          <div class="block_twitter_widget">
            <h4>标签</h4>
            <div class="lnk_follow"><a href="#" target="_blank">标签</a></div>
            <div class="block_tags">
              <ul>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">商业</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">科学</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">conferece</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">照片</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">教育</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">AI</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">运动</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">移动</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">技术</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电脑</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">视频</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">苹果</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">新闻</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">欧元</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文化</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">室内</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Midle东部</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设计</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2012年欧元</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">花卉</font></font></a></li>
              </ul>
            </div>
            <div class="line_2"></div>
          </div>
          <div class="separator" style="height:31px;"></div>
          <div class="block_popular_stuff">
            <h4>流行照片</h4>
            <div class="content"> <a href="#" class="view_all">显示所有照片</a>
              <div class="media"><a href="${pageContext.request.contextPath }/images/pic_pop_photo_big.jpg" class="general_pic_hover zoom no_fx" data-rel="prettyPhoto" title="Popular Photo"><img src="${pageContext.request.contextPath }/images/pic_pop_photo.jpg" alt="" /></a></div>
              <p><a href="blog_post_w_slider.html">编辑他们的默认模型文本，搜索会发现很多。</a> <img src="${pageContext.request.contextPath }/images/icon_photo.gif" alt="" /></p>
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
          <div class="separator" style="height:31px;"></div>
          <div class="block_newsletter">
            <h4>Newsletter</h4>
            <form action="#" />
            
            <div class="field">
              <input type="text" class="w_def_text" title="Enter Your Email Addres" />
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
   <footer id="bodyfooter"  style="display:none">
   <jsp:include page="inc/footer.jsp" />
  </footer>
  <!-- FOOTER END --> 
  
</div>


</body>
</html>