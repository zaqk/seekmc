<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bean.ResultSetBean" %> 
<%@ page import="java.util.Arrays" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
Search
<table>

<tr>
<td>
<b>1.SongName: ${songNameArray[0]} </b>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td>
<b>Link: </b>&nbsp;&nbsp;</td>
<td><a href ="${linkArray[0]}">${linkArray[0]}</a>
<br/>
</td>
</tr>
</table>
</body>
</html>