<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>

</style>

<body style="background-color: black;">

<jsp:include page="navigation.jsp"></jsp:include>
<c:if test="${isUserClickedLogin=='true'}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:if>
<c:if test="${isUserClickedSporty=='true'}">
		<jsp:include page="sporty.jsp"></jsp:include>
	</c:if>
	
<c:if test="${isUserClickedAnalog=='true'}">
		<jsp:include page="menanalog.jsp"></jsp:include>
	</c:if>

	<c:if test="${isUserClickedDigital=='true' }">
		<jsp:include page="mendigi.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedcolordials=='true' }">
		<jsp:include page="colordial.jsp"></jsp:include>
	</c:if>
	

	<c:if test="${isUserClickedRegister=='true' }">
		<jsp:include page="Registration.jsp"></jsp:include>
	</c:if>
	
<jsp:include page="slides.jsp"></jsp:include>
<jsp:include page="comingsoon.jsp"></jsp:include>
<jsp:include page="frontad1.jsp"></jsp:include>
<jsp:include page="frontad2.jsp"></jsp:include>
<jsp:include page="frontad3.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>




</body>
</html>