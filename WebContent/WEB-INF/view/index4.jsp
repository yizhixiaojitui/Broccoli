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
<jsp:include page="head.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/cropper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/ImgCropping.css">
<script src="${pageContext.request.contextPath }/js/cropper.min.js"></script>
<script src="${pageContext.request.contextPath }/js/cut_icon.js"></script>
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
		<main role="main" class="container">
	<div class="main-wrapper">
<div class="sidebar-offcanvas" id="sidebar">
	<div class="list-group-title list-group-item">内容</div>
	<div class="list-group">
		<a href="#" class="list-group-item active" >文章管理</a>
		<a href="#" target="_blank" class="list-group-item none">专栏管理</a>
		<a href="#" target="_blank" class="list-group-item none">专栏管理</a>
		<a href="#" target="_blank" class="list-group-item none">专栏管理</a>
		<a href="#" target="_blank" class="list-group-item none">专栏管理</a>
	</div>
	<div class="list-group-title list-group-item">内容</div>
	<div class="list-group">
		<a href="#" target="_blank" class="list-group-item none">专栏管理</a>
		<a href="#" target="_blank" class="list-group-item none">专栏管理</a>
	</div>
</div>
<div class="" id="content-body">
<form action="" id="user_edit" method="post">
	<div class="replaceicon">
	<div style="width: 160px;height: 160px;border: solid 1px #555;margin-top: 10px">
    <img id="finalImg" src="${pageContext.request.contextPath }/images/ava_default_2.jpg" width="100%">
</div>
<label id="replaceImg" class="l-btn" >更换头像</label>

<!--图片裁剪框 start-->
<div style="display: none" class="tailoring-container" id="tailoring-container">
    <div class="black-cloth" onclick="closeTailor(this)"></div>
    <div class="tailoring-content">
            <div class="tailoring-content-one">
                <label title="上传图片" for="chooseImg" class="l-btn choose-btn">
                    <input type="file" accept="image/jpg,image/jpeg,image/png" name="file" id="chooseImg" class="hidden" onchange="selectImg(this)">
                    选择图片
                </label>
                <div class="close-tailoring"  onclick="closeTailor(this)">×</div>
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
                <label class="l-btn cropper-reset-btn">复位</label>
                <label class="l-btn cropper-rotate-btn">旋转</label>
                <label class="l-btn cropper-scaleX-btn">换向</label>
                <label class="l-btn sureCut" id="sureCut">确定</label>
            </div>
        </div>
</div>
<!--图片裁剪框 end-->


	</div>
     <div class="edit_button_div">  <input class="edit_button" type="button" onclick="javascript:addArticle();"  value="发布"/>
				
					<input class="edit_button" type="button" value="保存草稿"/>
				
					<input class="edit_button_return" type="button"  value="返回"/>
					</div>
					</form>
					</div>
					
</div>
<div style="font: 0px/0px sans-serif;clear: both;display: block"> </div>
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





<script>

    //弹出框水平垂直居中
    (window.onresize = function () {
        var win_height = $(window).height();
        var win_width = $(window).width();
        if (win_width <= 768){
            $(".tailoring-content").css({
                "top": (win_height - $(".tailoring-content").outerHeight())/2,
                "left": 0
            });
        }else{
            $(".tailoring-content").css({
                "top": (win_height - $(".tailoring-content").outerHeight())/2,
                "left": (win_width - $(".tailoring-content").outerWidth())/2
            });
        }
    })();

    //弹出图片裁剪框
    $("#replaceImg").on("click",function () {
        $("#tailoring-container").toggle();
    });
    //图像上传
    function selectImg(file) {
        if (!file.files || !file.files[0]){
            return;
        }
        var reader = new FileReader();
        reader.onload = function (evt) {
            var replaceSrc = evt.target.result;
            //更换cropper的图片
            $('#tailoringImg').cropper('replace', replaceSrc,false);//默认false，适应高度，不失真
        }
        reader.readAsDataURL(file.files[0]);
    }
    //cropper图片裁剪
    $('#tailoringImg').cropper({
        aspectRatio: 1/1,//默认比例
        preview: '.previewImg',//预览视图
        guides: false,  //裁剪框的虚线(九宫格)
        autoCropArea: 0.5,  //0-1之间的数值，定义自动剪裁区域的大小，默认0.8
        movable: false, //是否允许移动图片
        dragCrop: true,  //是否允许移除当前的剪裁框，并通过拖动来新建一个剪裁框区域
        movable: true,  //是否允许移动剪裁框
        resizable: true,  //是否允许改变裁剪框的大小
        zoomable: false,  //是否允许缩放图片大小
        mouseWheelZoom: false,  //是否允许通过鼠标滚轮来缩放图片
        touchDragZoom: true,  //是否允许通过触摸移动来缩放图片
        rotatable: true,  //是否允许旋转图片
        crop: function(e) {
            // 输出结果数据裁剪图像。
        }
    });
    //旋转
    $(".cropper-rotate-btn").on("click",function () {
        $('#tailoringImg').cropper("rotate", 45);
    });
    //复位
    $(".cropper-reset-btn").on("click",function () {
        $('#tailoringImg').cropper("reset");
    });
    //换向
    var flagX = true;
    $(".cropper-scaleX-btn").on("click",function () {
        if(flagX){
            $('#tailoringImg').cropper("scaleX", -1);
            flagX = false;
        }else{
            $('#tailoringImg').cropper("scaleX", 1);
            flagX = true;
        }
        flagX != flagX;
    });

    //裁剪后的处理
    $("#sureCut").on("click",function () {
        if ($("#tailoringImg").attr("src") == null ){
            return false;
        }else{
            var cas = $('#tailoringImg').cropper('getCroppedCanvas');//获取被裁剪后的canvas
            var base64url = cas.toDataURL('image/png'); //转换为base64地址形式
            $("#finalImg").prop("src",base64url);//显示为图片的形式

            //关闭裁剪框
            closeTailor();
        }
    });
    //关闭裁剪框
    function closeTailor() {
        $("#tailoring-container").toggle();
    }



</script>

</body>
</html>