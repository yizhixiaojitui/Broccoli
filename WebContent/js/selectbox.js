$(document).ready(function(){
				
				//点击右边箭头icon时候
				$(".selectBox .fa").on("click",function(event){
					$(this).parent().next().toggle();//ul弹窗展开
					if($(this).hasClass("fa-caret-down")){
						$(this).removeClass("fa-caret-down").addClass("fa-caret-up")//点击input选择适合，小图标动态切换
					}else{
						$(this).addClass("fa-caret-down").removeClass("fa-caret-up")//点击input选择适合，小图标动态切换
					}
					if (event.stopPropagation) {   
			        	// 针对 Mozilla 和 Opera   
			        	event.stopPropagation();   
			        }else if (window.event) {   
			        	// 针对 IE   
			        	window.event.cancelBubble = true;   
			        }  
				});
				
				//
				$(".selectUl li").click(function(event){
					event=event||window.event; 
					$(this).addClass("actived_li").siblings().removeClass("actived_li");//点击当前的添加。actived_li这个类；其他的移除这个类名
					var oliName = $(this).attr("oliName");//定义一个name属性，获取点击的元素属性赋值到当前，方便动态化传值
					var oliId = $(this).attr("oliId");//定义一个id属性，获取点击的元素属性赋值到当前，方便数据交互传值
					$(this).parent().prev().children().val(oliName); //把当前点击的name赋值到显示的input的val里面
					$(this).parent().prev().children().attr("oliName",oliName);//把当前点击的oliName赋值到显示的input的oliName里面
					$(this).parent().prev().children().attr("oliId",oliId);//把当前点击的oliId赋值到显示的input的oliId里面
				});
				
				//点击任意地方隐藏下拉
				$(document).click(function(event){
					event=event||window.event; 
					$(".inputCase .fa").removeClass("fa-caret-up").addClass("fa-caret-down")//当点隐藏ul弹窗时候，把小图标恢复原状
					$(".selectUl").hide();//当点击空白处，隐藏ul弹窗
				});
				
			})
			