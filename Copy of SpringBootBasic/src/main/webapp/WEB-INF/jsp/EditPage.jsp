<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Edit Employee</h2>
<table class="table table-bordered"><tr>
<th>Id</th>
<th>Name</th>
<th>City</th>
<th>PhoneNum</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<c:forEach var="lis" items="${ls}">
<c:if test="${lis.empId!=empl.empId}">
<tr>
<td>${lis.empId}</td>
<td>${lis.empName}</td>
<td>${lis.city}</td>
<td>${lis.phoneNum}</td>
<td><a class="btn btn-success" href="edit?id=${lis.empId}">Edit</a></td>
<td><a class="btn btn-success" href="delete?id=${lis.empId}">Delete</a></td>
</tr>
</c:if>

<c:if test="${lis.empId==empl.empId}">
<form:form action="update" modelAttribute="emp">
<tr>
<td><form:input path="empId" value="${lis.empId}"></form:input></td>
<td><form:input path="empName" value="${lis.empName}"></form:input></td>
<td><form:input path="city" value="${lis.city}"></form:input></td>
<td><form:input path="phoneNum" value="${lis.phoneNum}"></form:input></td>
<td><input class="btn btn-success" type="submit" value="Update"></td>
<td><a class="btn btn-success" href="delete?id=${lis.empId}">Delete</a></td>
</tr>
</form:form>
</c:if>
</c:forEach>
</table>
</body>
</html>