<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

<style>
body{
  font-family: 'Open Sans', sans-serif;
  background:#3498db;
  margin: 0 auto 0 auto;  
  width:100%; 
  text-align:center;
  margin: 20px 0px 20px 0px;   
   background-image: url("resources/data1/images/background.jpg");
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
  background: #C0C0C0;
  width:300px;
  border-radius:6px;
  margin: 0 auto 0 auto;
  padding:0px 0px 70px 0px;
  border: #ba996d 4px solid; 
  height: 570px;
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

.btn{
  background:#8B4513;
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
  background:#8B4513;
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


 <link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600' rel='stylesheet' type='text/css'>

<form action="aftereditproduct" method="post">
<div class="box">
<h1>edit product details here</h1>

<input type="text" name="productid" value="${product.productid}" readonly="true" class="email" >

 <input type="text" name="description" placeholder="description" class="email" />
  
  <input type="text" name="quantity" placeholder="quantity" class="email" />

  <input type="text" name="productname" placeholder="enter product name" value="${product.productname}" class="email" />

<select name="category">
  <br><br><option value="">Select Category</option><br><br>
  <c:forEach items="${categoryList}" var="category"><br><br>
  <option value="${category.categoryname}">${category.categoryname}</option>
  </c:forEach>
</select>
 


  <select name="supplier"><br><br>
  <option value="">Select Supplier</option><br><br>
  <c:forEach items="${supplierList}" var="supplier"><br><br>
  <option value="${supplier.suppliername}">${supplier.suppliername}</option>
  </c:forEach>
</select>

  <input type="text" name="brand" placeholder="brand"  value="${product.brand}"class="email" />
  
   <input type="text" name="price" placeholder="price" value="${product.price}" class="email" />
  
  <input type="text" name="color" placeholder="color" value="${product.color}" class="email" />



<div class="btn" style="width: 90%;"><input type="submit" name="submit">
</div></a>
<a href="afterlogin"><div class="btn2" style="width: 90%;">cancel</div></a>
 <!-- End Btn2 -->
  
</div> <!-- End Box -->
  
</form>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>


</html>