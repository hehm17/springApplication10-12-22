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
<u><i>fee updation</i></u>
</h1>
<form:form action="edit1" method="post" modelAttribute="shareRecord"> 
Enter Company Id:<form:input type="text" path="companyId" readonly="readonly"/>
<br></br>
Enter Company Name:<form:input type="text" path="companyName" readonly="readonly"/>
<br></br>
Enter Company Share:<form:input type="text" path="sharePrice" />
<br></br>
<input type="submit" value="submit">
<br></br>
</form:form>
</div>
</body>
</html>
