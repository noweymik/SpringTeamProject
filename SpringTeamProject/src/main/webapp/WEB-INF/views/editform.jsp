<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<style>
   body {
      text-align: center;
   }
   form {
      background-color: #ffd991;
      border:2px solid black;
      width: 30%;
      height: 485px;
      padding: 15px;
      margin: auto;
      margin-top: 100px;
      line-height:44px;
   }
   table {
      margin: auto;
   }
   #okay {
      background-color: #ffb428;
      border-radius: 4px;
      padding: 5px 50px;
      color: white;
      font-size: 20px; 
      border: none;
   }
</style>
</head>
<body>

<form:form commandName="boardVO" method="POST" action="../editok">
   <h3>Edit</h3>
   <form:hidden path="id" />
   <table id="edit">
      <tr><td>카테고리</td><td><form:input path="category" style="text-align:center; padding: 4px; width: 150px;"/></td></tr>
      <tr><td>음식이름</td><td><form:input path="name" style="text-align:center; padding: 4px; width: 150px;" /></td></tr>
      <tr><td>유통기한</td><td><form:input type="date" path="expiredDate" style="text-align:center; padding: 4px; width: 150px;" /></td></tr>
      <tr><td>타입</td><td>
         <div>
            <form:radiobutton id = "choice1" path = "type" value= "실온"/>
            <label for="choice1">실온</label>
            
            <form:radiobutton id = "choice2" path = "type" value= "냉장"/>
            <label for="choice2">냉장</label>
            
            <form:radiobutton id = "choice3" path = "type" value= "냉동"/>
            <label for="choice3">냉동</label>
         </div></td></tr>
      
      <tr><td>설명</td><td><form:textarea cols="50" rows="5" path="detail" style="text-align:center; padding: 4px; width: 300px;"/></td></tr>
   
   </table>
   <br>
   <input type="submit" value="Edit" id="okay"/>
   <input type="button" value="Cancel" onclick="history.back()" id="okay"/>
</form:form>
</body>
</html>