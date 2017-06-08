 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<br><br><br><br>
<c:choose>
	<c:when test="${isUserClickedview_category=='true' }">
		<jsp:include page="viewcategory.jsp"></jsp:include>
	</c:when>
	
	<c:when test="${isUserClickedadd_category=='true' }">
		<jsp:include page="Category.jsp"></jsp:include>
	</c:when>
	
	<c:when test="${isUserClickedview_product=='true' }">
		<jsp:include page="viewproduct.jsp"></jsp:include>
	</c:when>
	
	<c:when test="${isUserClickedadd_product=='true' }">
		<jsp:include page="Product.jsp"></jsp:include>
	</c:when>

   <c:when test="${isUserClickedview_supplier=='true' }">
		<jsp:include page="viewsupplier.jsp"></jsp:include>
	</c:when>
	
	<c:when test="${isUserClickedadd_supplier=='true' }">
		<jsp:include page="Supplier.jsp"></jsp:include>
	</c:when>
	
	<c:when test="${isUserClickedEdit=='true' }">
		<jsp:include page="editcategory.jsp"></jsp:include>
	</c:when>
	
	<c:when test="${isUserClickedEdit1=='true' }">
		<jsp:include page="editproduct.jsp"></jsp:include>
	</c:when>
	
	<c:when test="${isUserClickedEdit2=='true' }">
		<jsp:include page="editsupplier.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
	<h2 style="text-align: center;">Welcome Admin!!!</h2>  
	
	</c:otherwise>
</c:choose>
</body>
</html>