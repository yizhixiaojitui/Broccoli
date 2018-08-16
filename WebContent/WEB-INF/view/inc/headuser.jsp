<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<ul>
               <c:if test="${user !='' && user !=null}">
               <li>Hi,</li>
               <li  class="current"><a href="#">${user.userName } </a></li>
               <li><a href = "javascript:void(0);" onclick ="exitlogin();">退出 </a></li>
                </c:if>
                <c:if test="${user ==''|| user ==null}">
                <li class="current"><a href = "javascript:void(0);" onclick ="login_show();"  >登录</a></li>
                <li><a href = "javascript:void(0);" onclick ="regist_show();">注册</a></li>
                </c:if>
                <li><a href="#">订阅</a></li>
</ul>