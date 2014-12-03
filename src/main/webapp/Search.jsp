<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bean.ResultSetBean" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
Search
<table>
<c:forEach items= "${songNameList}" var="songNameList">
 <tr>
  <td><c:out value="${foo.name}" /></td>

 </tr>
</c:forEach>
<tr>
<td>
<b>1. Song Name: </b>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td>
<b>Link: </b>&nbsp;&nbsp;</td>
<td><a href ="google.com">link here</a>
<br/>
</td>
</tr>
</table>
</body>
</html>