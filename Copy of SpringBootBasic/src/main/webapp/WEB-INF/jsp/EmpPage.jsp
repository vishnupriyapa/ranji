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
<script type="text/javascript">
function validate()
{
if(document.getElementById("empName").value=="")	
	{
	document.getElementById("empName").innerHTML="Enter the name"
	document.getElementById("city").innerHTML=""
	document.getElementById("phoneNum").innerHTML=""
	return false
	}
else if(document.getElementById("city").value=="")	
	{
	document.getElementById("city").innerHTML="Enter the city"
	document.getElementById("empName").innerHTML=""
	document.getElementById("phoneNum").innerHTML=""
		return false
	}
else if(document.getElementById("phoneNum").value=="")	
{
document.getElementById("phoneNum").innerHTML="Enter the phoneNum"
document.getElementById("empName").innerHTML=""
document.getElementById("city").innerHTML=""
	return false
}
else
	{
	return true
	}
}
</script>
</head>
<body>
<h2 align="center">Registration</h2>
<div class="container">
<form:form action="save" modelAttribute="emp">
<table class="table">
<tr>
<!-- <td style="border-top: 1px solid white">empId</td> -->
<td style="border-top: 1px solid white"><form:hidden path="empId"/></td>
</tr>
<tr>
<td style="border-top: 1px solid white">empName</td>
<td style="border-top: 1px solid white"><form:input path="empName" id="empName"/></td>
</tr>
<tr>
<td style="border-top: 1px solid white">city</td>
<td style="border-top: 1px solid white"><form:input path="city" id="city"/></td>
</tr>
<tr>
<td style="border-top: 1px solid white">phoneNum</td>
<td style="border-top: 1px solid white"><form:input path="phoneNum" id="phoneNum"/></td>
</tr>
<tr>
<td colspan="2" style="border-top: 1px solid white"><input type="submit" value="Sumbit" onclick="return validate()"></td>
</tr>
</table>
</form:form>
</div>
</body>
</html>