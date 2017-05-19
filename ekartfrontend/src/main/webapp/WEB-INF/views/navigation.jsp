<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>Insert title here</title>
<style>

</style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <img src="resources/data1/images/logo.png" width="300" height="50">
    </div>
    <c:if test="${isUser == 'true' }">
    <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control"  style="width: 400px;"   placeholder="Search products here....">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit" style="height:34px;width:50px;background-color: #001130;">
           Go
          </button>
        </div>
      </div>
    </form>
    
     <ul class="nav navbar-nav navbar-right">
       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">men
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="mendigiPage"> Digital</a></li>
          <li><a href="menanalogPage">Analog</a></li>
        </ul>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">women
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="colordialPage">colordials</a></li>
          <li><a href="sportyPage">sporty</a></li>
        </ul>
      </li>
      </ul>
      </c:if>
      
     <c:if test="${isAdmin == 'true' }">
       <ul class="nav navbar-nav navbar-right">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">supplier
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="viewsupplierPage">view_supplier</a></li>
          <li><a href="SupplierPage">add_supplier</a></li>
        </ul>
      </li>
      
       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">product
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="viewproductPage">view_product</a></li> 
           <li><a href="ProductPage">add_product</a></li>          
        </ul>
      </li>
      
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="viewcategoryPage">view_category</a></li>
          <li><a href="CategoryPage">add_category</a></li>         
        </ul>
      </li>
       </ul>
     </c:if>
     
    
       <ul class="nav navbar-nav navbar-right">
      <li><a href="HomePage"> Home</a></li>
      
      <li><a href="cartPage"><i class="glyphicon glyphicon-cart"></i> Cart</a></li>
      
      </ul>
      
      <c:if test="${pageContext.request.userPrincipal.name== null }">
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="LoginPage"><i class="glyphicon glyphicon-user"></i> Login</a></li>
 
	<li><a href="RegistrationPage"><i class="glyphicon glyphicon-pencil"></i> Register</a></li>
      </ul>
      </c:if>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="logout"><i class="glyphicon glyphicon-user"></i> Logout</a></li>
      </ul>
      </ul>
    
  </div>
</nav>


</body>
</html>