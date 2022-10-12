<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1 style="color:red">
<u><i>New Company Entry</i></u>
</h1>
<form:form action="company-entry" method="post" modelAttribute="shareRecord">
<form:input type="hidden" path="companyId" value="00"/>
Enter Company Name:<form:input type="text" path="companyName"/>
<br></br>
Enter Share Price:<form:input type="text" path="sharePrice"/>
<br></br>
<input type="submit" value="submit">
<br></br>
</form:form>
</div>
</body>
</html>
