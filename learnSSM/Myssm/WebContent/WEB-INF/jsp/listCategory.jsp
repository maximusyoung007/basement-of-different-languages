<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div>
	<table align='center' border='1' cellspacing='0'>
    	<tr>
        	<td>id</td>
        	<td>name</td>
    	</tr>
    	<c:forEach items="${cs}" var="c" varStatus="st">
        	<tr>
            	<td>${c.id}</td>
            	<td>${c.name}</td>
               
        	</tr>
    	</c:forEach>
    
	</table>
	<div style="text-align:center">
		<a href="?start=0">首  页</a>
        <c:if test="${page.start-page.count>=0}">
        <a href="?start=${page.start-page.count}">上一页</a>
        </c:if>
         
        <c:if test="${page.start+page.count<=page.last}">
        <a href="?start=${page.start+page.count}">下一页</a>
        </c:if>
        <a href="?start=${page.last}">末  页</a>
	</div>
</div>