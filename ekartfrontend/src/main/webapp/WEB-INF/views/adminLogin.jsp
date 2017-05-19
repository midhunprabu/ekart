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
	<c:if test="${isUserClickedview_category=='true' }">
		<jsp:include page="viewcategory.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedadd_category=='true' }">
		<jsp:include page="Category.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedview_product=='true' }">
		<jsp:include page="viewproduct.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedadd_product=='true' }">
		<jsp:include page="Product.jsp"></jsp:include>
	</c:if>

   <c:if test="${isUserClickedview_supplier=='true' }">
		<jsp:include page="viewsupplier.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${isUserClickedadd_supplier=='true' }">
		<jsp:include page="Supplier.jsp"></jsp:include>
	</c:if>

</body>
</html>