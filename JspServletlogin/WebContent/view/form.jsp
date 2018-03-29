<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
 #checkPwd{
	color :red;
	font-size:12px;
} 
</style>

</head>
<body>
<script type="text/javascript" src="httpRequest.js"></script>
<script type="text/javascript">
 function checkPwd(){
	  var f1 = document.forms[0];
	  var pw1 = f1.CreditCardNumber.value;
	  var pw2 = f1.RepeatCreditCardNumber.value;
	  if(pw1!=pw2){
	   document.getElementById('checkPwd').style.color = "red";
	   document.getElementById('checkPwd').innerHTML = "동일한 암호를 입력하세요."; 
	  }else{
	   document.getElementById('checkPwd').style.color = "blue";
	   document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다."; 
	   
	  }
	  
	 }

 </script>
	<h2>A Sample Form</h2>
 	<form action="/firstHomeWork/Formdata" method="get">
 		//<input type="hidden" name="command" value="ADD/">
 		Item Number:<input type="text" name="ItemNumber"/><br/>
 		Desription:<input type="text" name="Desription"/><br/>
 		Price Each:<input type="text" name="PriceEach"><br/>
 		<hr>
 		First Name:<input type="text" name="FirstName"><br/>
 		Last Name:<input type="text" name="LastName"><br/>
 		Middle Intial:<input type="text" name="MiddleIntial"><br/>
 		Shipping Address:<textarea rows="5" cols="30" name="ShippingAddress"></textarea><br/>
 		Credit Card:
 		<ul>
 			<li><input type="radio" name="CreditCard" value="Visa">Visa</li>
 			<li><input type="radio" name="CreditCard" value="MasterCard">MasterCard</li>
 			<li><input type="radio" name="CreditCard" value="AmericanExpress">American Express</li>
 			<li><input type="radio" name="CreditCard" value="Discover">Discover</li>
 			<li><input type="radio" name="CreditCard"value="JavaSmartCard">Java SmartCard</li>
 		</ul>
 		Credit Card Number:<input type="password" name="CreditCardNumber" id="CreditCardNumber"><br/>
 		Repeat Credit Card Number:<input type="password" name="RepeatCreditCardNumber" onkeyup="checkPwd()"></input><br/>
 		 

 		<div id="checkPwd">동일한 암호를 입력하세요.</div>
		<input type="submit" value="submit Order">

 	</form>
		 		 	
	
</body>
</html>