<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<style>
h1 {
   color: black;
   width: 100%;
   text-align: center; 

}
p {
   text-align: right;
}

#new {  
	margin-left: 93%;     
	margin-bottom: 10px;
	background-color:#63cdda;
	border-radius: 4px;
	padding: 10px 20px;     
	border: none;
}
#list {
     font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
     border-collapse: collapse;
     width: 100%;
}
#list td, #list th {
	/* border-top: 1px solid gray; */
    border-bottom: 1px solid gray;
    padding: 8px;
    text-align:center;
}
#list tr:hover {background-color: #ddd;}
#list th {
   padding-top: 12px;
   padding-bottom: 12px;
   text-align: center;
}
#view{
	background-color:#dfbdef;
	border-radius: 4px;
	padding: 7px;   
	color: white;
	border: none;
}
#edit{
	background-color: #fdcb6e;
	border-radius: 4px;
	padding: 7px;   
	color: white;
	border: none;
}
#delete{
	background-color: #fab1a0;
	border-radius: 4px; 
	padding: 7px;   
	color: white;
	border: none;
}
#signout {
	background-color: #ababab;
	border-radius: 2px; 
	padding: 7px;   
	color: white; 
	border: none; 
}
 
</style>
<script>
   function delete_ok(id){
      var a = confirm("정말로 삭제하겠습니까?");
      if(a) location.href='deleteok/' + id;
   }
</script>
</head> 
<body>
<p><a href="login/logout"><input type="button" value="Sign out" id="signout"></a></p>
<h1>FreshFood</h1>
<br/><button type="button" onclick="location.href='add'" id="new">새&nbsp;글쓰기</button>

<table id="list">
<tr> 
   <th>Id</th>
   <th>카테고리</th> 
   <th>음식 이름</th>
   <th>유통기한</th>
   <th>추가설명</th>
   <th>타입</th>
   <th>등록일</th>
   <th>보기</th>
   <th>수정</th>
   <th>삭제</th>
</tr>
<c:forEach items="${list}" var="u">

   <tr>
   
      <td>${u.id}</td>
      <td>${u.category}</td>
      <td>${u.name}</td>
      
      
      <fmt:formatDate value="${u.expiredDate}" pattern="yyyy/MM/dd" var="exDate"/>
      <fmt:formatDate value="<%=new java.util.Date() %>" pattern="yyyy/MM/dd" var="now"/>
         
     <c:choose>
         <c:when test = "${exDate eq now}">
            <td style="color:blue;"><fmt:formatDate value="${u.expiredDate}" pattern="yyyy/MM/dd"/></td>
         </c:when>
      <c:when test = "${exDate lt now}">
         <td style="color:red;"><fmt:formatDate value="${u.expiredDate}" pattern="yyyy/MM/dd"/></td>
      </c:when>
      <c:otherwise>
         <td><fmt:formatDate value="${u.expiredDate}" pattern="yyyy/MM/dd"/></td>
      </c:otherwise>
   </c:choose>
      
      <td>${u.detail}</td>
      <td>${u.type}</td>
      
      <td><fmt:formatDate value="${u.regdate}" pattern="yyyy/MM/dd"/></td>
      <td><a href="view/${u.id}"><input type="button" value="보기" id="view"> </a></td>
      <td><a href="editform/${u.id}"><input type="button" value="수정" id="edit"></a></td>
      <td><a href="javascript:delete_ok('${u.id}')"><input type="button" value="삭제" id="delete"></a></td>
   </tr>
</c:forEach>
</table>
</body>
</html>