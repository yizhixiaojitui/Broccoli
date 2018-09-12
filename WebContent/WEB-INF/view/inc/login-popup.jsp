<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<div class="captcha_img" style="float: left; " ><img class="captcha2" src="${pageContext.request.contextPath }/Login/getVerifyCode.action" id="verifyCodeImage" onclick="javascript:changeImage();" title="点击图片更换验证码"  />
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
				<div class="captcha_img" style="float: left; " ><img class="captcha2" src="${pageContext.request.contextPath }/Login/getVerifyCode.action" id="rverifyCodeImage" onclick="javascript:changeImage2();" title="点击图片更换验证码"  />
				</div></div>
				<div class="login" onclick="javascript:regist();">立即注册</div>
				<div id="msg"><span id="regist_msg_txt"></span></div>
			</div>
			</form>
		</div>