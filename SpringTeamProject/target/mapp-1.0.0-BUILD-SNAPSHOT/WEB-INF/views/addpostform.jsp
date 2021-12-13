<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Form</title>
<style>
   body {
      text-align: center;
   }
   form {
      background-color: #b4e7ed;
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
      background-color: #63cdda;
      border-radius: 4px;
      padding: 5px 50px;
      color: white;
      font-size: 20px; 
      border: none;
   }
</style>
</head>
<body>

<form action="addok" method="post">
   <h3>Post</h3>
   <table id="edit">
      <tr><td>카테고리</td><td><input type="text" name="category" style="text-align:center; padding: 4px; width: 150px;" /></td></tr>
      <tr><td>음식 이름</td><td><input type="text" name="name" style="text-align:center; padding: 4px; width: 150px;" /></td></tr>
      <tr><td>유통기한</td><td><input type="date" name="expiredDate" style="text-align:center; padding: 4px; width: 150px;" /></td></tr>
      <tr><td>타입</td>
      <td>
      <div>
          <input type="radio" id="choice1" name="type" value="실온" checked>
          <label for="choice1">실온</label>
      
          <input type="radio" id="choice2" name="type" value="냉장">
          <label for="choice2">냉장</label>
      
          <input type="radio" id="choice3" name="type" value="냉동">
          <label for="choice3">냉동</label>
        </div>
        </td>
        </tr>
        
      <tr><td>설명</td><td><textarea cols="50" rows="5" name="detail" style="text-align:center; padding: 4px; width: 300px;"></textarea></td></tr>
      
   </table>
   <button type="submit" id="okay">Post</button>
   <button type="button" onclick="location.href='list'" id="okay">Cancel</button>
</form>

</body>
</html>