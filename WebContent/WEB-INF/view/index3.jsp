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
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/wangeditor/wangEditor.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/wangeditor/wangEditor.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/wangeditor/wangEditor.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/wangeditor/wangEditor.min.css" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
        <main role="main" class="container">
	<div class="main-wrapper">
<div class="sidebar-offcanvas" id="sidebar">
	<div class="list-group-title list-group-item">内容</div>
	<div class="list-group">
		<a href="#" class="list-group-item active" >文章管理</a>
		<a href="#" target="_blank" class="list-group-item list-group-item-hover">专栏管理</a>
		<a href="#" target="_blank" class="list-group-item list-group-item-hover">专栏管理</a>
		<a href="#" target="_blank" class="list-group-item list-group-item-hover">专栏管理</a>
		<a href="#" target="_blank" class="list-group-item list-group-item-hover">专栏管理</a>
	</div>
	<div class="list-group-title list-group-item">内容</div>
	<div class="list-group">
		<a href="#" target="_blank" class="list-group-item list-group-item-hover">专栏管理</a>
		<a href="#" target="_blank" class="list-group-item list-group-item-hover">专栏管理</a>
	</div>
</div>
<div class="" id="content-body">
<form action="" id="edit_from" method="post">
	<div class="title-box">
                <input type="text" id="txtTitle" name="article_name" maxlength="100" placeholder="输入文章标题">
				
    </div>
      <div id="editor" style="min-height:500px">
    </div>
	<script type="text/javascript">
        var E = window.wangEditor;
        var editor = new E('#editor');

        editor.customConfig.uploadImgServer = '/Broccoli/upload/fileUpload.action';
        editor.customConfig.uploadFileName = 'myFileName';
        editor.create();
        
    </script>
      <div class="box">
<label class="edit_title">文章标签：</label>
<div class="tagsinput-primary form-group">
<input name="tagsinput"  id="tagsinputval" class="tagsinput" data-role="tagsinput" value="" placeholder="添加标签" style="display: none;">

</div>
</div>
<div>
<label class="edit_title">个人分类：</label>
<div class="selectBox"style="display: inline-block;">
        	<div class="inputCase">
				<input id="per_classify" class="imitationSelect" type="text" placeholder="添加个人分类" oulname="" oulid="" value="">
				<i class="fa fa-caret-down"></i>
			</div>
			<ul class="selectUl" style="display: none;">
				<li oliname="橘子" oliid="1" class="actived_li">橘子</li>
				<li oliname="苹果" oliid="2">苹果</li>
				<li oliname="桃子" oliid="3">桃子</li>
			</ul>
        </div></div>
        
        <div >
        <label class="edit_title">私密文章：</label>
        <div class="wrap" style="
    vertical-align: middle;
    display: inline-block;">
  <input type="checkbox" id="set_private_checkbox" onclick="set_private();" />
  <label class="slider-v3" for="set_private_checkbox"></label>
</div><label id="set_private_msg" class="checkbox_msg checkbox_msg_none" >已设为私密。</label>
        </div>
        <script type="text/javascript">
        function set_private(){
        	if($("#set_private_checkbox").is(":checked")){
        		  $("#set_private_msg").removeClass("checkbox_msg_none");
        	}else{
        		$("#set_private_msg").addClass("checkbox_msg_none");
        	}
        }
        
        function addArticle(){
        	
        	var txtTitle=$('#txtTitle').val();//文章标题
        	var article_tag=$('#tagsinputval').val();//文章标签
        	var article_content=editor.txt.html();//文章内容
        	var article_text = editor.txt.text();
        	var article_type=0;
        	var per_classify=$('#per_classify').val();//个人分类
        	 // 获取编辑器区域完整html代码
            
        	if($("#set_private_checkbox").is(":checked")){
        		article_type=0;
      	    }else{
      		
      		    article_type=1;
      	    }
        	if(txtTitle==""||txtTitle==null){
        		swal({ 
        			  title: "请填写标题哟", 
        			  type:"error",
        			  text: "2秒后自动关闭。", 
        			  timer: 2000, 
        			  allowOutsideClick:true,
        			  showConfirmButton: true 
        			}); 
        			
        		return false;
        	}
        	if(article_tag==""||article_tag==null){
        		swal({ 
      			  title: "请添加文章标签哟", 
      			  type:"error",
      			  text: "2秒后自动关闭。", 
      			  timer: 2000, 
      			  allowOutsideClick:true,
      			  showConfirmButton: true 
      			});
        		return false;
        	}
        	if(article_text==""||article_text==null){
        		swal({ 
        			  title: "请填写文章内容哟", 
        			  type:"error",
        			  text: "2秒后自动关闭。", 
        			  timer: 2000, 
        			  allowOutsideClick:true,
        			  showConfirmButton: true 
        			});
        		return false;
        	}
        	if(per_classify==""||per_classify==null){
        		swal({ 
      			  title: "请填写个人分类哟", 
      			  type:"error",
      			  text: "2秒后自动关闭。", 
      			  timer: 2000, 
      			  allowOutsideClick:true,
      			  showConfirmButton: true 
      			});
        		return false;
        	}
        	
        			$.ajax({
                		type: "POST",  
                	    url:  basePath+"/home/addBlog.action",  
                	    data:{articleName:txtTitle,
                	    	articleLabel:article_tag,
                	    	articleContent:article_content,
                	    	articleType:article_type,
                	    	sortArticleName:per_classify},//:txtTitle,articleLabel:article_tag,articleContent:article_content,articleType:article_type,sortArticleId:per_classify
                	    dataType: 'json',
                	    success: function(data){  
                	    	//返回添加成功状态后返回到文章页
                	    	if(data.msg==1){
                	    		swal({ 
                	      			  title: "添加成功！", 
                	      			  type:"success",
                	      			  text: "5秒后自动跳转。", 
                	      			  timer: 5000, 
                	      			  allowOutsideClick:false,
                	      			  showConfirmButton: true 
                	      			},function(){
                	      				
                	      			});
                	    	}else{
                	    		swal({ 
                	      			  title: "添加失败！请重试", 
                	      			  type:"error",
                	      			  text: "2秒后自动关闭。", 
                	      			  timer: 2000, 
                	      			  allowOutsideClick:true,
                	      			  showConfirmButton: true 
                	      			});
                	    	}
                	        
                	    },  
                	    error: function(res){  
                	       
                	    }  
                	});
        		  
        	
        	
        }
        </script>
        <script type="text/javascript">
        function testsweetalert(){
        	var html = editor.$txt.html();
            alert(html);
            // 获取编辑器纯文本内容
            
            alert(text);
            // 获取格式化后的纯文本
            var formatText = editor.$txt.formatText();
            alert(formatText);
    	}
        </script>
     <div class="edit_button_div">  <input class="edit_button" type="button" onclick="javascript:addArticle();"  value="发布"/>
				
					<input class="edit_button" type="button" value="保存草稿"/>
				
					<input class="edit_button_return" type="button"  value="返回" onclick="javascript:testsweetalert();"/>
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

	

</body>
</html>