<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Attribute"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MajesticX</title>
</head>
<body>

<b>Choose Attributes:</b>





<form action="/MajesticX2/Connection" method="post">

Experimental:<input type="checkbox" name="attributePreference" value="experimental"/>

<br/>

House/Electronic Influenced:<input type="checkbox" name="attributePreference" value="house_influenced"/>

<br/>

Hip Hop Influenced:<input type="checkbox" name="attributePreference" value="hip_hop_influenced"/>

<br/>

Indie Influenced:<input type="checkbox" name="attributePreference" value="indie_influenced"/>

<br/>

Deep House:<input type="checkbox" name="attributePreference" value="deep_house"/>

<br/>

Hip-Hop: <input type="checkbox" name="attributePreference" value="hip_hop"/>

<br/>

Indie: <input type="checkbox" name="attributePreference" value="indie"/>

<br/>
<br/>


Heavy Sub Bass:<input type="checkbox" name="attributePreference" value="heavy_sub_bass"/>

<br/>

Poppy:<input type="checkbox" name="attributePreference" value="poppy"/>

<br/>

Energetic:<input type="checkbox" name="attributePreference" value="energetic"/>

<br/>

Calm:<input type="checkbox" name="attributePreference" value="calm"/>

<br/>

Aggressive:<input type="checkbox" name="attributePreference" value="aggressive"/>

<br/>

Ethereal:<input type="checkbox" name="attributePreference" value="ethereal"/>

<br/>
<br/>


Jazz Influenced:<input type="checkbox" name="attributePreference" value="jazz_influenced"/>

<br/>

Trap Influenced:<input type="checkbox" name="attributePreference" value="trap_influenced"/>

<br/>

R&B Influenced:<input type="checkbox" name="attributePreference" value="rnb influenced"/>

<br/>

Funk Influenced:<input type="checkbox" name="attributePreference" value="funk_influenced"/>

<br/>

Old School Vibes:<input type="checkbox" name="attributePreference" value="old_school_vibes"/>

<br/>
<br/>



Male Vocals:<input type="checkbox" name="attributePreference" value="male_vocals"/>

<br/>

Female Vocals:<input type="checkbox" name="attributePreference" value="female_vocals"/>

<br/>

Heavy Vocal Manipulation:<input type="checkbox" name="attributePreference" value="heavy_vocal_manipulation"/>

<br/>

Instrumental:<input type="checkbox" name="attributePreference" value="instrumental"/>

<br/>





<input type="submit" name="submit" value="OK"/>

</form>

</body>
</html>