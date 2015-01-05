<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SeekMC</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/toggles.css"></link>
<link rel="stylesheet" type="text/css" href="css/toggles-dark.css"></link>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="js/toggles.js" type="text/javascript"></script>
</head>
<div id="header">
<div class="linkbar">
<input type="checkbox" hidden="true" name="attributePreference"  value="null"/>
<a href="https://www.youtube.com/channel/UCXIyz409s7bNWVcM-vjfdVA" class="toplink" target="_blank">
majestic casual
</a>
&nbsp;
&nbsp;
&nbsp;
<a href="/about" class="toplink">
about
</a>
&nbsp;
</div>

<h1 class="logo diez_logo">
MAJESTIC CASUAL SEARCH
</h1>
</div>
<div class="diez" id="container">
  <div id="center" class="column">
	<body>
	<div class="genre">
		<form action="/search" method="post">
			 Experimental <input type="checkbox" class="checkbox experimental" hidden="true" name="attributePreference"  value="experimental"/>
				<div class="toggle experimental tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES </div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
			
			Deep House <input type="checkbox" class="checkbox deephouse" hidden="true" name="attributePreference"  value="deep_house"/>
				<div class="toggle deephouse tContainer toggle-dark">
					<div class="toggle on">   
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
			Hip-Hop <input type="checkbox" class="checkbox hip_hop" hidden="true" name="attributePreference"  value="hip_hop"/>
				<div class="toggle hip_hop tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>			
			
			Indie <input type="checkbox" class="checkbox indie" hidden="true" name="attributePreference" value="indie"/>
				<div class="toggle indie tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>			
	
				<br/>
	<div class="experimentalDropDown experimentalSubToggle" hidden="true">	
			
			House/Electronic Influenced<input type="checkbox" class="checkbox house_influ"  hidden="true" name="attributePreference"value="house_influenced"/>
			<div class="toggle house_influ tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>			
				<br/>
			Hip Hop Influenced<input type="checkbox" class="checkbox hip_hop_influ"  hidden="true" name="attributePreference" value="hip_hop_influenced"/>
				<div class="toggle hip_hop_influ tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			Indie Influenced<input type="checkbox" class="checkbox indie_influ"  hidden="true" name="attributePreference" value="indie_influenced"/>
			<div class="toggle indie_influ tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
	</div>
	</div>
	<div class="bottomMenu">
			<div class="drop_downSC">			
				Characteristics<div id="arrowSC" class="arrow-down"></div>
			</div>
	<div class="subChar">

			Heavy Sub Bass<input type="checkbox" class="checkbox heavy" hidden="true" name="attributePreference" value="heavy_sub_bass"/>
			<div class="toggle heavy tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			Poppy<input type="checkbox" class="checkbox poppy" hidden="true" name="attributePreference" value="poppy"/>
				<div class="toggle poppy tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			Energetic<input type="checkbox" class="checkbox energetic" hidden="true" name="attributePreference" value="energetic"/>
				<div class="toggle energetic tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			Calm<input type="checkbox" class="checkbox calm" hidden="true" name="attributePreference" value="calm"/>
				<div class="toggle calm tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			Aggressive<input type="checkbox" class="checkbox aggressive" hidden="true" name="attributePreference" value="aggressive"/>
				<div class="toggle aggressive tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			Ethereal<input type="checkbox" class="checkbox ethereal" hidden="true" name="attributePreference" value="ethereal"/>
				<div class="toggle ethereal tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>

	</div>
			<div class="drop_downSI">
				Influences<div id="arrowSI" class="arrow-down"></div>
			</div>
		<div class="subInflu"> 
		</br>
			Jazz Influenced<input type="checkbox" class="checkbox jazz_influ" hidden="true" name="attributePreference" value="jazz_influenced"/>
				<div class="toggle jazz_influ tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
			
				<br/>
			Trap Influenced<input type="checkbox" class="checkbox trap_influ" hidden="true" name="attributePreference" value="trap_influenced"/>
				<div class="toggle trap_influ tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			R&B Influenced<input type="checkbox" class="checkbox rb_influ" hidden="true" name="attributePreference" value="rnb influenced"/>
			<div class="toggle rb_influ tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			Funk Influenced<input type="checkbox" class="checkbox funk_influ" hidden="true" name="attributePreference" value="funk_influenced"/>
			<div class="toggle funk_influ tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			Old School Vibes<input type="checkbox" class="checkbox old" hidden="true" name="attributePreference" value="old_school_vibes"/>
			<div class="toggle old tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
		</div>
		<div class="drop_downV">
				Vocals<div id="arrowV" class="arrow-down"></div>
		</div>
		<div class="vocals">

		</br>
			Male Vocals<input type="checkbox" class="checkbox male" hidden="true" name="attributePreference" value="male_vocals"/>
			<div class="toggle male tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>

				<br/>
			Female Vocals<input type="checkbox" class="checkbox female" hidden="true" name="attributePreference" value="female_vocals"/>
			<div class="toggle female tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>

				<br/>
			Vocal Manipulation<input type="checkbox" class="checkbox manip" hidden="true" name="attributePreference" value="heavy_vocal_manipulation"/>
			<div class="toggle manip tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>
				<br/>
			Instrumental<input type="checkbox" class="checkbox instrum" hidden="true" name="attributePreference" value="instrumental"/>
			<div class="toggle instrum tContainer toggle-dark">
					<div class="toggle on">
						<div class="toggle-slide">
							<div style="width: 185px; margin-left: -75px;" class="toggle-inner">
								<div style="height: 35px; width: 92.5px; text-indent: -17.5px; line-height: 35px;" class="toggle-on">YES</div>
								<div style="height: 35px; width: 35px; margin-left: -17.5px;" class="toggle-blob"></div>
								<div style="height: 35px; width: 92.5px; margin-left: -17.5px; text-indent: 17.5px; line-height: 35px;" class="toggle-off active">NO</div>
							</div>
						</div>
					</div>
				</div>

				
			
		</div>

		</div>
				<br/>
		

				<input type="submit" class="btn diez_btn" name="submit" value="Search"/>
		</form>
	</body>
	<div class="copyright"> © 2014 Zachary King </div> 
	</div>
	</div>
  <div id="left" class="column">left
  </div>
  <div id="right" class="column">
  </div>
</div>
		
<div id="footer">
<script>
$(document).ready(function(){



$(".drop_downSC").click(function(){
  $(".subChar").toggle();
  $("#arrowSC").toggleClass("arrow-up arrow-down");
});


$(".drop_downSI").click(function(){
  $(".subInflu").toggle();
  $("#arrowSI").toggleClass("arrow-up arrow-down");
});

$(".drop_downV").click(function(){
  $(".vocals").toggle();
  $("#arrowV").toggleClass("arrow-up arrow-down");
});


$(".experimental").click(function(){
  $(".experimentalSubToggle").toggle();
});




			
$(".experimental").toggles({
	checkbox:$(".experimental"),
	click: true
	
});
$(".house_influ").toggles({
	checkbox:$(".house_influ"),
	click: true
});

$(".hip_hop_influ").toggles({
	checkbox:$(".hip_hop_influ"),
	click: true
});

$(".indie_influ").toggles({
	checkbox:$(".indie_influ"),
	click: true
});

$(".deephouse").toggles({
	checkbox:$(".deephouse"),
	click: true
});

$(".hip_hop").toggles({
	checkbox:$(".hip_hop"),
	click: true
});

$(".indie").toggles({
	checkbox:$(".indie"),
	click: true
});

$(".heavy").toggles({
	checkbox:$(".heavy"),
	click: true
});

$(".poppy").toggles({
	checkbox:$(".poppy"),
	click: true
});

$(".energetic").toggles({
	checkbox:$(".energetic"),
	click: true
});

$(".calm").toggles({
	checkbox:$(".calm"),
	click: true
});

$(".aggressive").toggles({
	checkbox:$(".aggressive"),
	click: true
});

$(".ethereal").toggles({
	checkbox:$(".ethereal"),
	click: true
});

$(".jazz_influ").toggles({
	checkbox:$(".jazz_influ"),
	click: true
});

$(".trap_influ").toggles({
	checkbox:$(".trap_influ"),
	click: true
});

$(".rb_influ").toggles({
	checkbox:$(".rb_influ"),
	click: true
});

$(".funk_influ").toggles({
	checkbox:$(".funk_influ"),
	click: true
});

$(".old").toggles({
	checkbox:$(".old"),
	click: true
});

$(".male").toggles({
	checkbox:$(".male"),
	click: true
});

$(".female").toggles({
	checkbox:$(".female"),
	click: true
});

$(".manip").toggles({
	checkbox:$(".manip"),
	click: true
});

$(".instrum").toggles({
	checkbox:$(".instrum"),
	click: true
});
});

</script>
</div>
</html>
