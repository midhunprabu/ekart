<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body{
  font-family: 'Open Sans', sans-serif;
  background:#4adb34;
  margin: 0 auto 0 auto;  
  width:100%; 
  text-align:center;
  background-size:cover;
  margin: 20px 0px 20px 0px;   
  background-image: url("resources/data1/images/WDF_1010949.jpg");
}

p{
  font-size:12px;
  text-decoration: none;
  color:#ffffff;
}

h1{
  font-size:1.5em;
  color:#525252;
}

.box{
  background:#C0C0C0;
  width:300px;
  border-radius:6px;
  margin: 0 auto 0 auto;
  padding:0px 0px 70px 0px;
  border: #191970 4px solid;
  height: 300px; 
}

.email{
  background:#ecf0f1;
  border: #ccc 1px solid;
  border-bottom: #ccc 2px solid;
  padding: 8px;
  width:250px;
  color:#AAAAAA;
  margin-top:10px;
  font-size:1em;
  border-radius:4px;
}

.password{
  border-radius:4px;
  background:#ecf0f1;
  border: #ccc 1px solid;
  padding: 8px;
  width:250px;
  font-size:1em;
}

.btn{
  background:#191970;
  width:125px;
  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #27ae60 1px solid;
  
  margin-top:20px;
  margin-bottom:10px;
  float:left;
  margin-left:16px;
  font-weight:800;
  font-size:0.8em;
}



.btn:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.btn:hover{
  background:#2CC06B; 
}

.btn2:hover{
  background:	#8B0000; 
}

.btn2{
  float:left;
  background:#191970;
  width:125px;  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #2980b9 1px solid;
  
  margin-top:10px;
  margin-bottom:20px;
  margin-left:16px;
  font-weight:800;
  font-size:0.8em;
}

#btn2:hover{ 
background:#3594D2; 
}
</style>
</head>
<body >
<br><br><br><br><br><br><br><br>
 <link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600' rel='stylesheet' type='text/css'>

<form action="signIn" method="post" >
<div class="box">
<h1>login here</h1>

<input type="email" name="email" placeholder="email" onFocus="field_focus(this, 'email');" onblur="field_blur(this, 'email');" class="email" />
  
<input type="password" name="password" placeholder="password" onFocus="field_focus(this, 'email');" onblur="field_blur(this, 'email');" class="email" />
  
<p><u style="color:black;"><a href="#">forgot  password?</a> </u></p>
  
<a><input type="submit" name="submit" value="Sign in" class="btn" style="width: 90%;"></a> <!-- End Btn -->
<a href="http://localhost:8080/ekartfrontend/"><div class="btn2" style="width: 90%;">cancel</div></a>
</div> <!-- End Box -->
  
</form>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
</body>
</html>