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
<u><i>Company Share Price Updation</i></u>
</h1>
<br/>

<form:form action="companyShare" method="post" modelAttribute="companyShareRecord" >
<h2>
Company Id<form:input type="text" path="companyId" readonly="readonly"/>
<br/><br/>
Course Name:<form:input type="text" path="companyName" readonly="readonly"/>
<br/><br/>
Enter New Share Price:<form:input type="text" path="sharePrice"/>
<br/><br/>

<button type="submit"> Submit</button>

</form:form>
</div>
</body>
</html>