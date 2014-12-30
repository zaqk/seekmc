<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SeekMC</title>
</head>
<div id="header">
					<div class="search-logo">
					<h1>Search Results</h1><br/>
					</div>

</div>
<div id="container">
	<div id="center" class="column">
		<body>
			<div class="selected_att"> Attributes:&nbsp; 
			<c:forEach var="i" begin="0" end="${length - 1}"> 
				${attributePreferences[i]}&nbsp;
			</c:forEach>
			</div>
			</br>
			</br>
			
		<div class="result">
			<c:choose>
			
				<c:when test = "${i < 0}">
					<p> ERROR </p>
				</c:when>
				<c:otherwise> 
    				<c:forEach var="i" begin="0" end="${length - 1}">  
 						<div class="song">
  							<div class="song_name">
								${i + 1}. Song Name:  ${songNameArray[i]} 
							</div>
								</br>
								</br>

&nbsp;&nbsp;&nbsp;&nbsp;Link: &nbsp;<a href ="${linkArray[i]}" class="video_link" target="_blank">${linkArray[i]}</a>
								</br>
								</br>
								</br>
						</div>
    				</c:forEach>
    				</c:otherwise>
    				
    		</c:choose>
  	  </div>
  	  
  	  
  	  <form action="/Home.jsp">
		<input type="submit" class="btn_search" value="back"/>
	  </form>
	  

	</body>
	<div class="copyright"> © 2014 Zachary King </div> 
  <div id="left" class="column">
  </div>
  <div id="right" class="column">
  </div>
  <div id="footer">
  </div>
</html>