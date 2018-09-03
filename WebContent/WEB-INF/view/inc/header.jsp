<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
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
								<li class="current"><a href="${pageContext.request.contextPath }/login.jsp">登录</a></li>
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
					<a href="${pageContext.request.contextPath }/home/index.action"><img
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