<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
            <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Share List</title>
</head>
<body>
<div align="center">
<h1>
<hr size="11" color="green"/>
Company Share List
</h1>
<h3 style="color:pink">
<a href="entry">Enlist a new company</a>
</h3>
<hr size="5" color="cyan"/>
<h2>
<table border="2">
  <tr>
    <th>COMPANY ID</th>
    <th>COMPANY NAME</th>
    <th>SHARE PRICE</th>
    <th>Actions</th>
    
    </tr>
    <c:forEach  items="${Company}" var="company">
      <tr>
      <td>${company.companyId}</td>
      <td>${company.companyName}</td>
      <td>${company.sharePrice}</td>
      <td><h3>
       &nbsp;&nbsp;<a href="edit/${company.companyId}">Edit Share Price</a> 
       &nbsp;&nbsp;<a href="delete/${company.companyId}">Delete Company</a>
       </h3></td>
      </tr>
     </c:forEach>
  </table>
  </h2>
</div>
</body>
</html>
