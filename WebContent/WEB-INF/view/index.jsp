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

<script type="text/javascript" src="${pageContext.request.contextPath }/layout/js/jquery.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/layout/style.css" type="text/css">
<!-- PrettyPhoto start -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/layout/plugins/prettyphoto/css/prettyPhoto.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/layout/plugins/prettyphoto/jquery.prettyPhoto.js"></script>
<!-- PrettyPhoto end -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/layout/fonts/iconfont.css" type="text/css" />
<!-- jQuery tools start -->
<script type="text/javascript" src="${pageContext.request.contextPath }/layout/plugins/tools/jquery.tools.min.js"></script>
<!-- jQuery tools end -->
<script type="text/javascript" src="${pageContext.request.contextPath }/layout/js/mouseclick.js"></script>
<!-- ScrollTo start -->
<script type="text/javascript" src="${pageContext.request.contextPath }/layout/plugins/scrollto/jquery.scroll.to.min.js"></script>
<!-- ScrollTo end -->

<!-- MediaElements start -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/layout/plugins/video-audio/mediaelementplayer.css" />
<script src="${pageContext.request.contextPath }/layout/plugins/video-audio/mediaelement-and-player.js"></script>
<!-- MediaElements end -->

<!-- FlexSlider start -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/layout/plugins/flexslider/flexslider.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/layout/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- FlexSlider end -->

<!-- iButtons start -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/layout/plugins/ibuttons/css/jquery.ibutton.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/layout/plugins/ibuttons/lib/jquery.ibutton.min.js"></script>
<!-- iButtons end -->

<!-- jQuery Form Plugin start -->
<script type="text/javascript" src="${pageContext.request.contextPath }/layout/plugins/ajaxform/jquery.form.js"></script>
<!-- jQuery Form Plugin end -->

<script type="text/javascript" src="${pageContext.request.contextPath }/layout/js/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/layout/js/login_check.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>

</style>
</head>

<body >
   <div id="web_bg" style="background-image: url(${pageContext.request.contextPath }/images/dvaaa.jpg);"></div>
<div class="wrapper sticky_footer;" > 
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
               <li  class="current"><a href="#">${user.userName } </a></li>
               <li><a href = "javascript:void(0);" onclick ="exitlogin();">退出 </a></li>
                </c:if>
                <c:if test="${user ==''|| user ==null}">
                <li class="current"><a href = "javascript:void(0);" onclick ="login_show();"  >登录</a></li>
                <li><a href = "javascript:void(0);" onclick ="regist_show();">注册</a></li>
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
          <div id="logo_top"><a href="index.html"><img src="${pageContext.request.contextPath }/images/logo_top.png" alt="BusinessNews" title="BusinessNews" /></a></div>
         
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
            
              <div class="pic"> <a href="${pageContext.request.contextPath }/blog/query.action?bid=${result.articleId}" class="w_hover"> <img src="${pageContext.request.contextPath }/images/${result.userImageUrl }" alt="" /> <span></span> </a> </div>
              <div class="text">
                <p class="title"><a href="${pageContext.request.contextPath }/blog/query.action?bid=${result.articleId}">${result.articleName }</a></p>
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
    <div id="footer" style="display:none">
      <section class="top">
        <div class="inner">
          <div id="logo_bottom"><a href="index.html"><img src="${pageContext.request.contextPath }/images/logo_bottom.png" alt=""></a></div>
          <div class="block_to_top"> <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">回到顶部</font></font></a> </div>
        </div>
      </section>
      <section class="bottom">
        <div class="inner">
          <div class="fr">
            <div class="block_menu_footer">
              <ul>
                <li><a href="business.html"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">主页</font></font></a></li>
                <li><a href="technology.html"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">相册</font></font></a></li>
                <li><a href="education.html"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">说说</font></font></a></li>
                <li><a href="media.html"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Blog</font></font></a></li>
              </ul>
            </div>
            <div class="block_social_footer">
              <ul>
                <li><a href="#" class="fb"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Facebook的</font></font></a></li>
                <li><a href="#" class="tw"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">推特</font></font></a></li>
                <li><a href="#" class="rss"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">RSS</font></font></a></li>
              </ul>
            </div>
          </div>
          <div class="block_copyrights">
            <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Copyright © 2018 xiaojitui. All Rights Reserved</font></font></p>
          </div>
        </div>
      </section>
    </div>
  </footer>
  <!-- FOOTER END --> 
  
</div>
<div class="login_box">
<a href = "javascript:void(0);" onclick ="login_box_close();" class="close">Close</a>
			<div id="landing" class="landing">登录</div>
			<div id="registered" class="registered">注册</div>
			<div class="fix"></div>
			<form id="loginform">
			<div id="landing-content">
				<div id="photo"><img src="${pageContext.request.contextPath }/images/ava_default_3.jpg" /></div>
				<div class="inp"><input type="text" id="username" placeholder="用户名"  /></div>
				<div class="inp"><input type="password" id="password" placeholder="密码" /></div>
				<div class="captcha"><div class="captcha_input" style="float: left;" ><input type="text" placeholder="验证码" id="user_input_verifyCode"/></div>
				<div class="captcha_img" style="float: left; " ><img class="captcha2" src="${pageContext.request.contextPath }/user/getVerifyCode.action" id="verifyCodeImage" onclick="javascript:changeImage();" title="点击图片更换验证码"  />
				</div></div>
				<div class="login" onclick="javascript:login();">登录</div>
				<div id="bottom"><span id="registeredtxt"><a href = "javascript:void(0);" onclick ="on_regist();">还没有账号？</a></span><span id="forgotpassword"><a href = "javascript:void(0);" >忘记密码?</a></span></div>
			    <div id="msg"><span id="msg_txt"></span></div>
			</div>
			</form>
			<form id="regist_form" >
			<div id="registered-content">
			    <div class="inp"><input type="text" id="nikename" name="nikename" placeholder="请输入昵称" /></div>
				<div class="inp"><input type="text" name="username" id="rusername" placeholder="请输入用户名" /></div>
				<div class="inp"><input type="password" id="rpassword" name="password" placeholder="请输入密码" /></div>
				<div class="inp"><input type="password" id="repassword" placeholder="请再次输入密码" /></div>
				<div class="inp"><input type="text" id="remail" name="email" placeholder="电子邮箱" /></div>
				<div class="inp"><input type="text" id="code" name="code" placeholder="邀请码" /></div>
				<div class="captcha"><div class="captcha_input" style="float: left;" ><input type="text" placeholder="验证码" name="verifyCode" id="re_user_input_verifyCode"/></div>
				<div class="captcha_img" style="float: left; " ><img class="captcha2" src="${pageContext.request.contextPath }/user/getVerifyCode.action" id="rverifyCodeImage" onclick="javascript:changeImage2();" title="点击图片更换验证码"  />
				</div></div>
				<div class="login" onclick="javascript:regist();">立即注册</div>
				<div id="msg"><span id="regist_msg_txt"></span></div>
			</div>
			</form>
		</div>

</body>
</html>