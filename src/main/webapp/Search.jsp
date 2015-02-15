<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Majestic Casual Search</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="bstrp/css/bootstrap.css" type="text/css" rel="stylesheet"></link>
<link href="bstrp/css/style.css" type="text/css" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58622759-1', 'auto');
  ga('send', 'pageview');
  
  

</script>
</head>
<body>
	<div class="navbar navbar-default navbar-static-top pNav">
		<div class="container">
			<div class="navbar-header">
				<div class="navbar-brand gold pFont logo">MAJESTIC CASUAL SEARCH</div>
				<button type="button" class ="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
					<span class="icon-bar mobileIconBars"></span>
					<span class="icon-bar mobileIconBars"></span>
					<span class="icon-bar mobileIconBars"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse navHeaderCollapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="goldLink pFont norm" target="_blank" href="https://www.youtube.com/channel/UCXIyz409s7bNWVcM-vjfdVA"> Majestic Casual</a></li>
					<li><a class="goldLink pFont norm" href="#"> Home</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container text-center pFont small-norm">Attributes:&nbsp; 
			<c:forEach var="i" begin="0" end="${length - 1}"> 
				${attributePreferences[i]}&nbsp;
			</c:forEach>
			</div>
			</br>
			</br>
			
		<div class="container">
			<div class="jumbotron pFont norm">
			<c:choose>
			
				<c:when test = "${noResults == true}">
				<div class="song_name pFont text-center">
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
  	  </div>
  	  
  	  
  	  <form action="/">
		<div class="navbar navbar-default navbar-fixed-bottom pNav">
		<div class="container text-center">

			<input type="submit" class="navbar-btn btn btn-inverse srch btn-sm pFont small-norm" name="back" value="back"/>

			<a href="http://www.youtube.com/subscription_center?add_user=majesticcasual" target="_blank" class="navbar-btn btn-danger btn pull-right youtubeBtn btn-sm">Subscribe on Youtube</a>
			<p class="navbar-text pull-left gold pFont small">© 2015 Zachary King</p>
		</div>
	</div>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="bstrp/js/bootstrap.min.js" type="text/javascript"></script>
	</form>
	</body>
</html>