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
<%for(int i = 0; i < 5; i++){ %>
<b> yo </b>
<%} %>
<%
int n = 1;

int zero = 0;
ResultSetBean rsBean = new ResultSetBean();

String[] songNameArray = new String[rsBean.getSongNameListLength()];
%>
<%= rsBean.getSongNameListLength()%>
<% 
//String[] linkArray = new String[rsBean.getLinkListLength()];



//System.arraycopy(rsBean.copySongNameListArray(songNameArray),zero, songNameArray, zero, rsBean.getSongNameListLength());

//System.arraycopy(rsBean.createLinkListArray(),zero, linkArray, zero, rsBean.getLinkListLength());

%>
<%= songNameArray[7] %>
<%= songNameArray.length %>
<% 
for(int i = 0; i != songNameArray.length; i++){
%>
<tr>
<td>
<b><%= n %>. Song Name: <%= songNameArray[i] %></b>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td>
<b>Link: </b>&nbsp;&nbsp;</td>
<td><a href ="google.com">google</a>
<br/>
</td>
</tr>
<% n++; } %>
</table>
</body>
</html>