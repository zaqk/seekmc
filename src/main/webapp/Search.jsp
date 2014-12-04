<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bean.ResultSetBean" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
Search
<table>
<%  
      String[] songNameArray = (String[])request.getAttribute("songNameArray");
	  String[] linkArray = (String[])request.getAttribute("linkArray");
	  
	  int n = 1;
	  
	  for(int i = 0; i < songNameArray.length; i++){
		  
%>
<tr>
<td>
<b><%= n %>. Song Name:<%=songNameArray[i].toString() %></b>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td>
<b>Link: </b>&nbsp;&nbsp;</td>
<td><a href ="<%= linkArray[i].toString()%>"><%= linkArray[i].toString()%></a>
<br/>
</td>
</tr>
<% n++; } %>
</table>
</body>
</html>