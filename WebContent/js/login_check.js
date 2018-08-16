       


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
		     
		     function regist(){
		    	 var username=$("#rusername").val();
		    	 var password=$("#rpassword").val();
		    	 var repassword=$("#repassword").val();
		    	 var email=$("#remail").val();
		    	 var code=$("#code").val();
		    	 var useuser_input_verifyCodername=$("#re_user_input_verifyCode").val();
		    	 if(username==""||username==null){
		        	 $("#msg_txt").html("请填写用户名!");
		             return false;
		         }else if(password==""||password==null){
			         $("#msg_txt").html("请填写密码!");
			         return false;
		         }else if(repassword==""||repassword==null||passwore!=repassword){
		        	 $("#msg_txt").html("两次密码输入不一致!");
		        	 $("#repassword").val("");
		        	 return false;
		         }else if(user_input_verifyCode==""||user_input_verifyCode==null){
		        	 $("#msg_txt").html("请填写验证码!");
		        	 return false;
		         }else if(code==""||code==null){
		        	 $("#msg_txt").html("请输入邀请码!");
		        	 return false;
		         }else if(useuser_input_verifyCodername==""||code==useuser_input_verifyCodername){
		        	 $("#msg_txt").html("请输入邀请码!");
		        	 changeImage2();
		        	 return false;
		         }
		    	 $.ajax({  
		                type :'post',  
		                url : basePath+"/user/login.action",  
		                data:{username:username,password:password,verifyCode:re_user_input_verifyCode,email:email,code:code},  
		                //dataType : "html",  
		                success : function(data) {
		                	var msg=data.msg;
		                          if(msg!=null||msg!=""&&msg==0){
		                        	  $('#msg_txt').html(data.msg_txt);
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
				
				
			
				