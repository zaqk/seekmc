<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MajesticX</title>
</head>
<body>
<b>Search</b>
Attributes:&nbsp; 
	<c:forEach var="i" begin="0" end="${length - 1}"> 
		${attributePreferences[i]}, 
	</c:forEach>
<table>
    <c:forEach var="i" begin="0" end="${length - 1}">  
 
  
<tr>
<td>
<b>${i + 1}. SongName: </b> ${songNameArray[i]} 
</td>
</tr>
<tr>
<td>
<b>Link: </b><a href ="${linkArray[i]}" target="_blank">${linkArray[i]}</a></td>
</tr>
    </c:forEach>
</table>
</body>
</html>