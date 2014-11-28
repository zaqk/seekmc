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
<% 
int i = 0;
ResultSetBean rsBean = new ResultSetBean();


while(rsBean.next()){ %>

<tr>
<td><b><%= i %>. Song Name: </b> <%= rsBean.getString("song_name") %></td>
</tr>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;
<b>Link: </b> &nbsp;&nbsp;
<tr>
<td><a href =" <%= rsBean.getString("link") %> "> <%= rsBean.getString("link") %>"</a></td>
</tr>
<br/>
<br/>
<% i++; } %>
</body>
</html>