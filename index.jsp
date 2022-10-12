<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<a href="companyShare-List">CompanyShare List</a>
<h1 style="color:red">
<u><i>All Company Details</i></u>
</h1>
<h2>
<br/>
 <table border="2">
 <tr>
    <th>Company Id</th>
    <th>Company Name</th>
    <th>Share Price</th>
    <th>Action</th>
    </tr>
    <c:forEach  items="${companyShareList}" var="companyShare">
     <tr>
      <td>${companyshare.companyId}</td>
      <td>${companyshare.companyName}</td>
      <td>${companyshare.companySharePrice}</td>
       <td><h3>
        <a href="display/${company.companyId}">Display</a>
       	&nbsp;&nbsp;
       	<a href="edit-company/${company.companyId}">Edit</a> 
      	&nbsp;&nbsp;
      	<a href="delete-company/${company.companyId}">Delete</a>
      </h3></td>
      </tr>
     </c:forEach>
  </table>
  </h2>
  </div>
</body>
</html>