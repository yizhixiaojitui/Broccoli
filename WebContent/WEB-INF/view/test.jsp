<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-2.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath }/css/sweetalert.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/sweetalert.min.js"></script> 
</head>
<body>

这是新建
<label class="l-btn" id="test_button">test</label>
<script type="text/javascript">
$("#test_button").click(function(){
	swal({ 
		  title: "确定删除吗？", 
		  text: "你将无法恢复该虚拟文件！", 
		  type: "warning",
		  showCancelButton: true, 
		  confirmButtonColor: "#DD6B55",
		  confirmButtonText: "确定删除！", 
		  cancelButtonText: "取消删除！",
		  closeOnConfirm: false, 
		  closeOnCancel: false	
		},
		function(isConfirm){ 
		  if (isConfirm) { 
		    swal("删除！", "你的虚拟文件已经被删除。",
		"success"); 
		  } else { 
		    swal("取消！", "你的虚拟文件是安全的:)",
		"error"); 
		  } 
		});
});

</script>
</body>
</html>