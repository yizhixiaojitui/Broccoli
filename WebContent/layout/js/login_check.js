        var localObj = window.location;

   	    var contextPath = localObj.pathname.split("/")[1];

   	    var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;

   	    var server_context=basePath;
		function on_regist(){
			$("#landing").removeClass("border-btn");
			$("#landing-content").hide(500);
			$("#registered").addClass("border-btn");
			$("#registered-content").show(500);
		}
		
			function genTimestamp() {      
		        var time = new Date();      
		        return time.getTime();      
		    }   
			function changeImage() {  
		         $('#verifyCodeImage').attr('src',basePath+'/user/getVerifyCode.action?timestamp=' + genTimestamp());  
		     
			}  
			function changeImage2() {  
		         $('#rverifyCodeImage').attr('src',basePath+'/user/getVerifyCode.action?timestamp=' + genTimestamp()+'1');  
		     
			}  
			 
		     //登录，目前只检测验证码  
		     function login(){  
		    	 
		    	 
		         var user_input_verifyCode=$("#user_input_verifyCode").val(); 
		         var username=$("#username").val();
		         var password=$("#password").val();
		         if(username==""||username==null){
		        	 $("#msg_txt").html("请填写用户名!");
		             return false;
		         }else if(password==""||password==null){
			         $("#msg_txt").html("请填写密码!");
			         return false;
		         }else if(user_input_verifyCode==""||user_input_verifyCode==null){
		        	 $("#msg_txt").html("请填写验证码!");
		        	 return false;
		         }
		         $.ajax({  
		                type :'post',  
		                url : basePath+"/user/login.action",  
		                data:{username:username,password:password,verifyCode:user_input_verifyCode},  
		                //dataType : "html",  
		                success : function(data) {
		                	var msg=data.msg;
		                          if(msg!=null||msg!=""&&msg==0){
		                        	  $('#msg_txt').html(data.msg_txt);
		                        	  $("#re_user_input_verifyCode").val("");
		                        	  changeImage();
		                        	
		                          }else{
		                        	  $('#user_top').html(data);
		                        	  login_box_close();
		                          }

		                },  
		                error: function (XMLHttpRequest, textStatus, errorThrown) {
		                    // 状态码
		                    console.log(XMLHttpRequest.status);
		                    // 状态
		                    console.log(XMLHttpRequest.readyState);
		                    // 错误信息   
		                    console.log(textStatus);
		                }
		            });   
		     }  
		   //用户名检测
		     function LoginTestUser(){
		    	 $('#username').blur(function(){
			    	
			    	 var name= $('#username').val();
	                 
		    		 
			    	if(name==""||name==null){
			    		 $('#username').addClass('error_msg_color');
			        	 $("#msg_txt").html("请填写用户名!");
			             return false;
			         }
			    	 $.ajax({  
			                type :'post',  
			                url : basePath+"/user/loginTestUser.action",
			                data : {username:name},
			                dataType : "json",  
			                success : function(data) {
			                	if(data.msg==0){
			                		$('#username').addClass('error_msg_color');
						    		 $("#msg_txt").html("账号不存在哦!"); 
						    		 return false;
			                	}
			                }
			                });
			    	 
			     });
			    	 $('#username').focus(function(){
			    		 $('#username').removeClass('error_msg_color');
				    	 $("#msg_txt").html("");
			    	 })
		     }
		     function regist(){
		    	 var nikename=$("#nikename").val();
		    	 var username=$("#rusername").val();
		    	 var password=$("#rpassword").val();
		    	 var repassword=$("#repassword").val();
		    	 var email=$("#remail").val();
		    	 var code=$("#code").val();
		    	 var useuser_input_verifyCodername=$("#re_user_input_verifyCode").val();
		    	 alert("进来了");
		         if(nikename==""||nikename==null){
		        	 $("#msg_txt").html("请填写昵称!");
		        	 $('#nikename').addClass('error_msg_color');
		             return false;
		         }else if(username==""||username==null){
		        	 $("#msg_txt").html("请填写用户名!");
		        	 $('#rusername').addClass('error_msg_color');
		             return false;
		         }else if(password==""||password==null){
			         $("#msg_txt").html("请填写密码!");
			         $('#rpassword').addClass('error_msg_color');
			         return false;
		         }else if(password!=repassword){
		        	 $("#msg_txt").html("两次密码输入不一致!");
		        	 
		        	 $('#repassword').addClass('error_msg_color');
		        	 $("#repassword").val("");
		        	 return false;
		         }else if(user_input_verifyCode==""||user_input_verifyCode==null){
		        	 $("#msg_txt").html("请填写验证码!");
		        	 alert("vcode");
		        	 return false;
		         }else if(code==""||code==null){
		        	 alert("code");
		        	 $("#msg_txt").html("请输入邀请码!");
		        	 return false;
		         }
		         $('#repassword').removeClass('error_msg_color');
		         $('#rpassword').removeClass('error_msg_color');
		         $('#rusername').removeClass('error_msg_color');
		         $('#nikename').removeClass('error_msg_color');
		    	 $.ajax({  
		                type :'post',  
		                url:basePath+"/user/regist.action",  
		                data:$('#regist_form').serialize(),  
		                dataType : "json",  
		                success : function(data) {
		                	alert(data);
		                	var msg=data.msg;
		                	alert(msg);
		                          if(msg==0){
		                        	  $('#msg_txt').html("验证码错误!");
		                        	  $("#re_user_input_verifyCode").val("");
		                        	  changeImage();
		                          }else if(msg==1){
		                        	  $('#msg_txt').html("注册成功,即将跳转!");
		                        	  window.setTimeout("window.location='"+basePath+"/user/index.action'",2000);
		                        	  
		                          }else{
		                        	  changeImage();
		                          }

		                },  
		                error: function (XMLHttpRequest, textStatus, errorThrown) {
		                    // 状态码
		                    console.log(XMLHttpRequest.status);
		                    // 状态
		                    console.log(XMLHttpRequest.readyState);
		                    // 错误信息   
		                    console.log(textStatus);
		                }
		            }); 
		         
		    	 
		     }
		     function exitlogin(){
		    	 $.ajax({  
		                type :'post',  
		                url : basePath+"/user/exitLogin.action",  
		                //dataType : "html",  
		                success : function(data) {
		                	window.location.replace(basePath+"/user/index.action");
		                	
		                }
		                });
		    	 
		     }
				function login_show() {
	               
	            
					$(".login_box").slideDown(500);
					$("#landing-content").show(500);
					$("#registered-content").hide(500);
					$("#landing").addClass("border-btn");
                    $("#registered").removeClass("border-btn");
					$("#registered").click(function() {
						$("#landing").removeClass("border-btn");
						$("#landing-content").hide(500);
						$(this).addClass("border-btn");
						$("#registered-content").show(500);
						changeImage2();
					})
	            
					$("#landing").click(function() {
						$("#registered").removeClass("border-btn");
						$(this).addClass("border-btn");
						$("#landing-content").show(500);
						$("#registered-content").hide(500);
						 changeImage();
					})
				}
				function regist_show(){
					$(".login_box").slideDown(500);
					$("#landing").removeClass("border-btn");
						$("#landing-content").hide(500);
						$("#registered").addClass("border-btn");
						$("#registered-content").show(500);
						 
						$("#registered").click(function() {
						$("#landing").removeClass("border-btn");
						$("#landing-content").hide(500);
						$(this).addClass("border-btn");
						$("#registered-content").show(500);
					})
	            
					$("#landing").click(function() {
						$("#registered").removeClass("border-btn");
						$(this).addClass("border-btn");
						$("#landing-content").show(500);
						$("#registered-content").hide(500);
					})
					}
				function login_box_close(){
					$(".login_box").slideUp(500);
					$("#registered").removeClass("border-btn");
					$("#landing").removeClass("border-btn");
					$("#registered-content").hide(500);
					}
			
				 //用户名检测
			     function testUser(){
			    	 $('#rusername').blur(function(){
				    	 var reg=/^[a-zA-Z][a-zA-Z0-9_@]{6,16}$/;
				    	 var name= $('#rusername').val();
		                 
			    		 
				    	if(name==""||name==null){
				    		 $('#rusername').addClass('error_msg_color');
				        	 $("#regist_msg_txt").html("请填写用户名!");
				             return false;
				         }
				    	 if(reg.test(name)!=true){
				    		 alert('false');
				    		 $('#rusername').addClass('error_msg_color');
				    		 $("#regist_msg_txt").html("用户名第一位为字母不得含有特殊符号长度6-16位!"); 
				    		 return false;
				    	 }
				    	 $.ajax({  
				                type :'post',  
				                url : basePath+"/user/testUser.action",
				                data : {username:name},
				               // dataType : "json",  
				                success : function(data) {
				                	
				                	if(data.msg==1){
				                		$('#rusername').addClass('error_msg_color');
							    		 $("#regist_msg_txt").html("已被注册，换一个吧!"); 
							    		 return false;
				                	}
				                }
				                });
				    	 
				     });
				    	 $('#rusername').focus(function(){
				    		 $('#rusername').removeClass('error_msg_color');
					    	 $("#regist_msg_txt").html("");
				    	 })
			     }
			     //邮箱校验
			     function testEmail(){
			    	 $('#remail').blur(function(){
				    	 var reg=/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
				    	 var email= $('#remail').val();
		                 
			    		 
				    	if(email==""||email==null){
				    		 $('#remail').addClass('error_msg_color');
				        	 $("#regist_msg_txt").html("请填写邮箱");
				             return false;
				         }
				    	 if(reg.test(email)!=true){
				    		 $('#remail').addClass('error_msg_color');
				    		 $("#regist_msg_txt").html("请检查邮箱格式!"); 
				    		 return false;
				    	 }
				    	 $.ajax({  
				                type :'post',  
				                url : basePath+"/user/testEmail.action",
				                data : {email:email},
				               // dataType : "json",  
				                success : function(data) {
				                	
				                	if(data.msg==1){
				                		$('#remail').addClass('error_msg_color');
							    		 $("#regist_msg_txt").html("已被注册，换一个吧!"); 
							    		 return false;
				                	}
				                }
				                });
				    	 
				     });
				    	 $('#remail').focus(function(){
				    		 $('#remail').removeClass('error_msg_color');
					    	 $("#regist_msg_txt").html("");
				    	 })
			     }
			     //昵称校验
			     function testNike(){
			    	 $('#nikename').blur(function(){
				    	 var reg=/^[\w\u4e00-\u9fa5]{2,15}$/;
				    	 var nikename= $('#nikename').val();
		                 
			    		 
				    	if(nikename==""||nikename==null){
				    		 $('#nikename').addClass('error_msg_color');
				        	 $("#regist_msg_txt").html("请填写昵称");
				             return false;
				         }
				    	 if(reg.test(nikename)!=true){
				    		 $('#nikename').addClass('error_msg_color');
				    		 $("#regist_msg_txt").html("只能输入中英文数字2-15个字符，不包含特殊字符!"); 
				    		 return false;
				    	 }
				    	 $.ajax({  
				                type :'post',  
				                url : basePath+"/user/testID.action",
				                data : {nikename:nikename},
				               // dataType : "json",  
				                success : function(data) {
				                	
				                	if(data.msg==1){
				                		$('#nikename').addClass('error_msg_color');
							    		 $("#regist_msg_txt").html("已被注册，换一个吧!"); 
							    		 return false;
				                	}
				                }
				                });
				    	 
				     });
				    	 $('#nikename').focus(function(){
				    		 $('#nikename').removeClass('error_msg_color');
					    	 $("#regist_msg_txt").html("");
				    	 })
			     }
			     $(document).ready(function(){
			    	 testUser();
			    	 testEmail();
			    	 testNike();
			    	 LoginTestUser();
			     })
			     