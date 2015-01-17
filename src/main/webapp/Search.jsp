<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SeekMC</title>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58622759-1', 'auto');
  ga('send', 'pageview');
  
  

</script>
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
			
				<c:when test = "${noResults == true}">
				<div class="song_name">
					<p> Sorry, there are no songs that meet that meet that criteria.
						Try a less specific search. </p>
				</div>
				</c:when>
				<c:when test = "${emptyArray == true }">
					<div class="song_name">
					<p> Choose at least one criterion to search for </p>
					</div>
					</c:when>
					<c:otherwise> 
    					<c:forEach var="i" begin="0" end="${songListLength - 1}">  
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
  	  
  	  
  	  <form action="/">
		<input type="submit" class="btn_search" value="back"/>
	  </form>
	  

	</body>
  <div id="left" class="column">
  </div>
  <div id="right" class="column">
  </div>
  <div id="footer">
  </div>
</html>