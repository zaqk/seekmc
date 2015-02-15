<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Majestic Casual Search</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="bstrp/css/bootstrap.css" type="text/css" rel="stylesheet"></link>
		<link href="bstrp/css/style.css" type="text/css" rel="stylesheet"></link>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/toggles.css"></link>
		<link rel="stylesheet" type="text/css" href="css/toggles-dark.css"></link>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="js/toggles.js" type="text/javascript"></script>
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
							<li><a class="goldLink pFont norm" href="#"> Majestic Casual</a></li>
							<li><a class="goldLink pFont norm" href="/about"> About</a></li>

						</ul>
					</div>
					
			</div>
		
		</div>
		
		
		
		<div class="container">
			<div class="jumbotron">
				<div class="row">
					<form action="/search" class="form" method="post">
						<div class = "text-center">
							<div class="col-md-3 pFont gold norm">
							Experimental<input type="checkbox" class="checkbox experimental" hidden="true" name="attributePreference"  value="experimental"/>
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
							</div>
							<div class="col-md-3 pFont gold norm">
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
							</div>	
							<div class="col-md-3 pFont gold norm">
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
							</div>
							<div class="col-md-3 pFont gold norm">
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
							</div>
						</div>
				</div>
				<!--sub exper -->
				<div class="container botHalfPos">
				<div class="row text-center gold pFont small-norm">
				<div class="col-sm-1 pull-left text-left">&nbsp;</div>
					<div class="experimentalDropDown experimentalSubToggle container-fixed">
						<div class="col-sm-6 text-left" style="white-space: nowrap;">
							<div class="row gold pFont small-norm">
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
								</div>
							<div class="row gold pFont small-norm">
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
							</div>
							<div class="row gold pFont small-norm">
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
					</div>
				</div>
				</div>
				<!-- end sub exper -->	
				<br/>
				<br/>
				<br/>
				<br/>
				
				<!-- bottom menu ----->
				<div class="container">
					<div class="jumbotron text-center">
					
					
						<div class="col-lg-4"><!--subchar-->
							<div class="container">
								<div class="row">
									<div class="drop_downSC pFont norm">			
										Characteristics<div id="arrowSC" class="arrow-down"></div>
									</div>
								</div>
								<div class="subChar text-right pFont">
									<div class="row">

										Heavy Sub Bass<input type="checkbox" class="checkbox heavy" hidden="true" name="attributePreference" value="heavy_sub_bass"/>
										<div class="toggle heavy tContainer text-center pFont toggle-dark">
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
									<div class="row">
										Poppy<input type="checkbox" class="checkbox poppy" hidden="true" name="attributePreference" value="poppy"/>
										<div class="toggle poppy tContainer text-center pFont toggle-dark">
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
									<div class="row">
									
										Energetic<input type="checkbox" class="checkbox energetic" hidden="true" name="attributePreference" value="energetic"/>
										<div class="toggle energetic tContainer text-center pFont toggle-dark">
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
									<div class="row">
									Calm<input type="checkbox" class="checkbox calm" hidden="true" name="attributePreference" value="calm"/>
									<div class="toggle calm tContainer text-center pFont toggle-dark">
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
									<div class="row">
										Aggressive<input type="checkbox" class="checkbox aggressive" hidden="true" name="attributePreference" value="aggressive"/>
											<div class="toggle aggressive tContainer text-center pFont toggle-dark">
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
									<div class="row">
										Ethereal<input type="checkbox" class="checkbox ethereal" hidden="true" name="attributePreference" value="ethereal"/>
											<div class="toggle ethereal tContainer text-center pFont toggle-dark">
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
							</div>
						</div>
						
						
						
						<div class="col-lg-4"><!--subInflu-->
							<div class="container">
								<div class="row ">
									<div class="drop_downSI pFont norm">
									Influences<div id="arrowSI" class="arrow-down"></div>
									</div>
								</div>
								<div class="subInflu text-right pFont">
									<div class="row">
										Jazz Influenced<input type="checkbox" class="checkbox jazz_influ" hidden="true" name="attributePreference" value="jazz_influenced"/>
											<div class="toggle jazz_influ tContainer text-center pFont toggle-dark">
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
									<div class="row">
										Trap Influenced<input type="checkbox" class="checkbox trap_influ" hidden="true" name="attributePreference" value="trap_influenced"/>
											<div class="toggle trap_influ tContainer text-center pFont toggle-dark">
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
									<div class="row">
										R&B Influenced<input type="checkbox" class="checkbox rb_influ" hidden="true" name="attributePreference" value="rnb influenced"/>
										<div class="toggle rb_influ tContainer text-center pFont toggle-dark">
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
									<div class="row">
										Funk Influenced<input type="checkbox" class="checkbox funk_influ" hidden="true" name="attributePreference" value="funk_influenced"/>
										<div class="toggle funk_influ tContainer text-center pFont toggle-dark">
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
									<div class="row">
										Old School Vibes<input type="checkbox" class="checkbox old" hidden="true" name="attributePreference" value="old_school_vibes"/>
										<div class="toggle old tContainer text-center pFont toggle-dark">
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
							</div>
						</div>
						
						
						
						
						<div class="col-lg-4"><!--subVocal-->
							<div class="container">
								<div class="row">
									<div class="drop_downV pFont norm">
										Vocals<div id="arrowV" class="arrow-down"></div>
									</div>
								</div>
								<div class="vocals text-right pFont">
									<div class="row">
										Male Vocals<input type="checkbox" class="checkbox male" hidden="true" name="attributePreference" value="male_vocals"/>
										<div class="toggle male tContainer text-center pFont toggle-dark">
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
									<div class="row">
										Female Vocals<input type="checkbox" class="checkbox female" hidden="true" name="attributePreference" value="female_vocals"/>
										<div class="toggle female tContainer text-center pFont toggle-dark">
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
									<div class="row">
										Vocal Manipulation<input type="checkbox" class="checkbox manip" hidden="true" name="attributePreference" value="heavy_vocal_manipulation"/>
										<div class="toggle manip tContainer text-center pFont toggle-dark">
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
									<div class="row">
										Instrumental<input type="checkbox" class="checkbox instrum" hidden="true" name="attributePreference" value="instrumental"/>
										<div class="toggle instrum tContainer text-center pFont toggle-dark">
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
							</div>
						</div>
					</div>
				</div><!--end bot menu--->
			</div>
	</div>
					</form>
				</div><!--init jumbo-->
					
			</div>
		</div>
		<div class="navbar navbar-default navbar-fixed-bottom pNav">
			<div class="container text-center">
				<input type="submit" class="navbar-btn btn btn-inverse srch btn-sm pFont small-norm" name="submit" value="Search"/>
				<p class="navbar-text pull-left gold pFont small">  © 2015 Zachary King</p>
				
			</div>
		</div>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="bstrp/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="js/toggles.js" type="text/javascript"></script>
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
	</body>
</html>
