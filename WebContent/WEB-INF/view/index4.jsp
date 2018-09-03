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
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/cropper.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/ImgCropping.css">
<script src="${pageContext.request.contextPath }/js/cropper.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
select {
	padding: 5px;
	border-radius: 5px;
	outline: none;
}
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
		<main role="main" class="container">
		<div class="main-wrapper">
			<div class="sidebar-offcanvas" id="sidebar">
				<div class="list-group-title list-group-item">内容</div>
				<div class="list-group">
					<a href="#" class="list-group-item active">文章管理</a> <a href="#"
						target="_blank" class="list-group-item none">专栏管理</a> <a href="#"
						target="_blank" class="list-group-item none">专栏管理</a> <a href="#"
						target="_blank" class="list-group-item none">专栏管理</a> <a href="#"
						target="_blank" class="list-group-item none">专栏管理</a>
				</div>
				<div class="list-group-title list-group-item">内容</div>
				<div class="list-group">
					<a href="#" target="_blank" class="list-group-item none">专栏管理</a> <a
						href="#" target="_blank" class="list-group-item none">专栏管理</a>
				</div>
			</div>

			<div class="" id="content-body">
				<form action="" id="user_edit" method="post">
					<div class="replaceicon">
						<div id="replaceImg" class="replaceicon-msg" style="display: none">更换头像</div>
						<div class="replaceicon-border">
							<img id="finalImg"
								src="${pageContext.request.contextPath }/images/ava_default_2.jpg">
						</div>


						<!--图片裁剪框 start-->
						<div style="display: none" class="tailoring-container"
							id="tailoring-container">
							<div class="black-cloth" onclick="closeTailor(this)"></div>
							<div class="tailoring-content">
								<div class="tailoring-content-one">
									<label title="上传图片" for="chooseImg" class="l-btn choose-btn">
										<input type="file" accept="image/jpg,image/jpeg,image/png"
										name="file" id="chooseImg" class="hidden"
										onchange="selectImg(this)"> 选择图片
									</label>
									<div class="close-tailoring" onclick="closeTailor(this)">×</div>
								</div>
								<div class="tailoring-content-two">
									<div class="tailoring-box-parcel">
										<img id="tailoringImg">
									</div>
									<div class="preview-box-parcel">
										<p>图片预览：</p>
										<div class="square previewImg"></div>
										<div class="circular previewImg"></div>
									</div>
								</div>
								<div class="tailoring-content-three">
									<label class="l-btn cropper-reset-btn">复位</label> <label
										class="l-btn cropper-rotate-btn">旋转</label> <label
										class="l-btn cropper-scaleX-btn">换向</label> <label
										class="l-btn" id="clear">重置</label> <label
										class="l-btn sureCut" id="sureCut">确定</label>
								</div>
							</div>
						</div>
						<!--图片裁剪框 end-->

					</div>
					<div class="textWrap wordSumTotal textPadding">
						<label class="user-label">昵称：</label><input type="text" name=""
							placeholder="请输入昵称" maxlength="10">
					</div>
					<div class="textWrap wordSumTotal">
						<label class="user-label textarea-label">介绍：</label>
						<textarea name="" cols="" rows="" maxlength="100"></textarea>
					</div>
					<div id="date" class="textWrap textPadding">
						<label class="user-label ">生日：</label><input type="text"
							class="demo-input"  id="birthday">
					</div>
					<div class="textWrap">
						<label class="user-label ">性别：</label> <label class="sex_label ">
							<i class='input_style radio_bg'><input type="radio"
								name="hot" value="1"></i> 保密
						</label> <label class="sex_label"> <i
							class='input_style radio_bg'><input type="radio" name="hot"
								value="2"></i> 男
						</label> <label class="sex_label "> <i
							class='input_style radio_bg'><input type="radio" name="hot"
								value="3"></i> 女
						</label>
					</div>
					<div class="textWrap textPadding">
						<label class="user-label">邮箱：</label><input type="text" name=""
							placeholder="请填写邮箱">
					</div>
					<div class="textWrap textPadding">
						<label class="user-label">毕业学校：</label><input type="text" name=""
							placeholder="请填写毕业学校">
					</div>
					<div class="textWrap textPadding">
						<label class="user-label">QQ：</label><input type="text" name=""
							placeholder="请填写QQ">
					</div>
					<script>
						lay('#version').html('-v' + laydate.v);

						//执行一个laydate实例
						//常规用法
						laydate.render({
							elem : '#birthday' //指定元素
						});
					</script>
					<div class="edit_button_div">
					<label class="l-btn cropper-reset-btn" onclick="javascript:addArticle();">保存</label>
						
						<label class="l-btn cropper-reset-btn">返回</label>
					</div>
				</form>
			</div>

		</div>
		<div style="font: 0px/0px sans-serif; clear: both; display: block">
		</div>
	</div>
	</main>
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




	<script src="${pageContext.request.contextPath }/js/cut_icon.js"></script>


</body>
</html>