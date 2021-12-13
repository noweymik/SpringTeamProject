<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View</title>
<style>
   body {
      text-align: center;
   }
   form {
      background-color:  #e7d2f1;
      border:2px solid black;
      width: 30%;
      height: 485px;
      padding: 15px;
      margin: auto;
      margin-top: 100px;
      line-height:50px;
   }
   table {
      margin: auto;
   }
   #okay {
      background-color: #d9a9ef;
      border-radius: 4px;
      padding: 5px 50px;
      color: white;
      font-size: 20px; 
      border: none;
   }
</style>
</head>
<body>
<form:form commandName="boardVO" method="POST">
   <h3>View</h3>
   <form:hidden path="id" />
      <table>
         <tr><td>카테고리:</td><td><form:input type="text" path="category" style="text-align:center; padding: 4px; width: 80px;" /></td></tr>
         <tr><td>음식 이름:</td><td><form:input type="text" path="name" style="text-align:center; padding: 4px; width: 80px;" /></td></tr>
         <tr><td>유통기한:</td><td><form:input type="text" path="expiredDate" style="text-align:center; padding: 4px; width: 80px;" /></td></tr>
         <tr><td>타입:</td><td><form:input type="text" path="type" style="text-align:center; padding: 4px; width: 80px;" /></td></tr>
         <tr><td>설명:</td><td><form:input type="text" path="detail" style="text-align:center; padding: 4px; width: 80px;" /></td></tr>
      </table>
   <br>
   <input type="button" value="Okay" onclick="history.back()" id="okay"/>
</form:form>
</body>
</html>