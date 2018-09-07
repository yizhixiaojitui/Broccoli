<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>个人中心</title>
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
						target="_blank" class="list-group-item list-group-item-hover">专栏管理</a> <a href="#"
						target="_blank" class="list-group-item list-group-item-hover">专栏管理</a> <a href="#"
						target="_blank" class="list-group-item list-group-item-hover">专栏管理</a> <a href="#"
						target="_blank" class="list-group-item list-group-item-hover">专栏管理</a>
				</div>
				<div class="list-group-title list-group-item">内容</div>
				<div class="list-group">
					<a href="#" target="_blank" class="list-group-item none">专栏管理</a> <a
						href="#" target="_blank" class="list-group-item none">专栏管理</a>
				</div>
			</div>

			<div class="" id="content-body">
				<form  id="userinfo_link_from" >
					<div class="replaceicon">
						<div id="replaceImg" class="replaceicon-msg" style="display: none">更换头像</div>
						<div class="replaceicon-border">
							<img id="finalImg"
								src="${pageContext.request.contextPath }/upload/image/${user.userImageUrl }">
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
						<label class="user-label">昵称：</label><input type="text" name="userNikename"
							placeholder="请输入昵称" maxlength="10" value="${user.userNikename }">
					</div>
					<div class="textWrap wordSumTotal">
						<label class="user-label textarea-label">介绍：</label>
						<textarea name="userDescription" cols="" rows=""  maxlength="100" name="userDescription">${user.userDescription }</textarea>
					</div>
					<div id="date" class="textWrap textPadding">
						<label class="user-label ">生日：</label><input type="text"
							class="demo-input"  id="birthday" name="userBirthday" value="<fmt:formatDate value="${user.userBirthday }" pattern="yyyy-MM-dd" />">
					</div>
					<div class="textWrap">
					   
						<label class="user-label ">性别：</label> <label class="sex_label ">
							<i class='input_style radio_bg <c:if test="${user.userSex==10000 }">radio_bg_check </c:if>'><input type="radio"
								name="userSex" value="10000" <c:if test="${user.userSex==10000 }">checked</c:if>></i> 保密
						</label> <label class="sex_label"> <i
							class='input_style radio_bg <c:if test="${user.userSex==10001 }">radio_bg_check </c:if>'><input type="radio" name="userSex"
								value="10001" <c:if test="${user.userSex==10001 }">checked</c:if>></i> 男
						</label> 
						<label class="sex_label "> <i
							class='input_style radio_bg <c:if test="${user.userSex==10002 }">radio_bg_check </c:if>'><input type="radio" name="userSex"
								value="10002" <c:if test="${user.userSex==10002 }">checked</c:if>></i> 女
						</label>
					</div>
					<div class="textWrap textPadding">
						<label class="user-label">邮箱：</label><input type="text" name="userEmail"
							placeholder="请填写邮箱" value="${user.userEmail }">
					</div>
					<div class="textWrap textPadding">
						<label class="user-label">毕业学校：</label><input type="text" name="userSchool"
							placeholder="请填写毕业学校" value="${user.userSchool }">
					</div>
					<div class="textWrap textPadding">
						<label class="user-label">QQ：</label><input type="text" name="userQq"
							placeholder="请填写QQ" value="${user.userQq }">
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
					<label class="l-btn cropper-reset-btn" onclick="update_user_info();">保存</label>
						
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
	<jsp:include page="inc/footer.jsp" />
	</footer>
	<!-- FOOTER END -->
	</div>
	<script src="${pageContext.request.contextPath }/js/cut_icon.js"></script>


</body>
</html>