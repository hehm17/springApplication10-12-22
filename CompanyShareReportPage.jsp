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
<h1 style="color:red">
<u><i>Company Details for ${companyshare.companyId} </i></u>
</h1>
<h2>
     Company Id:${companyshare.companyId}
     <br/><br/>
     Company Name:${companyshare.companyName}
     <br/><br/>
     Share Price:${companyshare.sharePrice}
     <br/><br/>
     
      <a href="/index">return</a> 
  </h2>
  </div>
</body>
</html>
 