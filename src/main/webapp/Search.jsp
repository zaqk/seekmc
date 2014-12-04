<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bean.ResultSetBean" %> 
<%@ page import="java.util.Arrays" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
Search
<table>
    <c:forEach var="i" begin="0" end="${length}">  
 
  
<tr>
<td>
<b>1.SongName: ${songNameArray[i]} </b>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td>
<b>Link: </b>&nbsp;&nbsp;</td>
<td><a href ="${linkArray[i]}">${linkArray[i]}</a>
<br/>
</td>
</tr>
    </c:forEach>
</table>
</body>
</html>