<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1 style="color:red">
<u><i>New Company Details</i></u>
</h1>
<br/>
<form:form action="companyShare" method="post" modelAttribute="companyShareRecord" >
<h2>
<form:input type="hidden" path="companyId" value="00"/>
<br/><br/>
Enter Company Name:<form:input type="text" path="companyName"/>
<br/><br/>
Enter Share Price:<form:input type="text" path="sharePrice"/>
<br/><br/>
 
<button type="submit"> Submit</button>
</form:form>
</div>
 <br/>
</body>
</html>