<%@ page import="java.util.*"%>
<%@page import="dataBase.AuthDAO"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Campus Connect</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


<script src="scripts/scripts.js"></script>

<link href="CSS/style.css" rel="stylesheet" type="text/css">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
</head>

<body class="feeding">


	<!-- Navigation -->
	<jsp:include page="include/fnavbar.html" />



	<br>
	<br>
	<br>

	<!--tabs-->




	<div class="container"></div>

	<ul class="nav nav-tabs">
		<li><a href=newsfeed.jsp class="tabbold">News Feed</a></li>
		<li class="active"><a href=roommate.jsp class="tabbold">Roommate
				Finder</a></li>
		<li><a href="#menu2" class="tabbold">Student Market</a></li>

	</ul>

	<div class="tab-content">
		<div id="home" class="tab-pane fade in active">

			<!--tabs-->







			<!--NEWSFEEDS-->


			<!-- this is the wrapper for the content -->
			<div class="st-content">

				<!-- extra div for emulating position:fixed of the menu -->
				<div class="st-content-inner">

					<div class="container">


						<div class="row">
							<div class="col-md-9">
								<ul class="timeline-list">



									<!-- Post Starts-->
									<li class="media media-clearfix-xs">
										<div class="media-left">
											<div class="user-wrapper">
												<img src="<%=session.getAttribute("photopath")%>" alt="people"
													class="img-circle" width="80" height="80" /> <a href="#"> <%
 	out.println(session.getAttribute("email"));
 %>
												</a>
<%

Date dt = new java.util.Date();

java.text.SimpleDateFormat sdf = 
new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

String datenow = sdf.format(dt);

%>
												<div class="date"><% out.println(datenow); %></div>
											</div>
										</div>
										<div class="media-body">
											<div class="media-body-wrapper">
												<div class="row">
													<div class="col-md-10 col-lg-8">
														<div class="panel panel-default">
															<form action="Roommate" method="get">
																<div class="panel-heading panel-heading-gray ">

																	Please fill out the form below:</div>
																<div class="panel-body">
																	<label class="radio-inline"> <input
																		onclick="document.getElementById('amt').disabled = true;"
																		type="radio" name="optradio" value="Roommate">Roommate
																	</label> <label class="radio-inline"><input
																		type="radio" name="optradio" value="House">House</label>
																	<br> <br>
																	<textarea name="desc" id="description"
																		class="form-control" rows="3"
																		placeholder="Description..."></textarea>
																	<br> <label for="address">Address:</label> <input
																		type="text" class="form-control" id="add"
																		name="address" /> <br> <label for="address">Amount/Rent:</label>
																	<input type="text" class="form-control" id="amt"
																		name="rent" />
																</div>
																<div class="panel-footer share-buttons">
																	<input type="submit"
																		class="btn btn-primary btn-xs pull-right "
																		name="action" class="btn btn-primary" value="post" />
																</div>
															</form>
														</div>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>

										</div>
									</li>

									<!-- Post Ends-->



									<!-- Post Starts-->

									<%
										Map<String, ArrayList> p = (Map) request.getAttribute("m");
																																													ArrayList nindex = p.get("nindex");
																																													ArrayList pindex = p.get("pindex");
																																													ArrayList content = p.get("content");
																																													ArrayList pid = p.get("pid");
																																													ArrayList id = p.get("id");
																																													ArrayList email = p.get("email");
																																													ArrayList postdate = p.get("postdate");
																																													String mainpost ="";
																																													String primaryid="";
																																												
									%>

									<%
									AuthDAO ad = new AuthDAO();
									
										for (int counter = 0; counter < pindex.size(); counter++) {
																																																																												        if (nindex.contains(pindex.get(counter))) {																																	        	primaryid = (String) (id.get((int) pindex.get(counter)));																														mainpost = (String) (content.get((int) pindex.get(counter)));
									%>
									<!-- Post Starts-->

									<li class="media media-clearfix-xs">
										<div class="media-left">
											<div class="user-wrapper">
												<img src="CSS/images/<%=ad.getPhoto((String) email.get((int) pindex.get(counter)))%>" alt="people"
													class="img-circle" width="80" height="80"/>

												<div>
													<a href="#"> <%
 	out.println((String) email.get((int) pindex.get(counter)));%>
													</a>
												</div>
												<div class="date"><%
 	out.println((String) postdate.get((int) pindex.get(counter)));
 %></div>
											</div>
										</div>
										<div class="media-body">
											<div class="media-body-wrapper">
												<div class="panel panel-default">

													<div class="panel-body">
														<p id="o">


															<%
																out.println("Searching for: "+mainpost.split("@")[0]);
															%>

															<br>

															<%
																out.println("Description: "+mainpost.split("@")[1]);
															%><br>
															<%
																out.println("Address: "+mainpost.split("@")[2]);
															%><br>
															<%
																if(mainpost.split("@").length == 4) 
																												 out.println("Rent: "+mainpost.split("@")[3]);
															%><br> <br>
														<div id="a"></div>
														<div id="d"></div>
														<div id="r"></div>
													</div>
													<!-- All Comments-->
													<ul class="comments">

														<!-- New Comment-->
														<li class="comment-form">
															<div class="input-group">
																<form action="Roommate" method="get">
																	<input type="text" class="form-control" name="replynew" />
																	<input name="replyposts" type="hidden"
																		value="<%=primaryid%>"> <span
																		class="input-group-btn"> <input type="submit"
																		name="action" class="btn btn-primary" value="reply" />
																	</span>
																</form>
															</div>
														</li>
														<%
															}else{primaryid="abcdefghijklmnopqrstuvwxyzqwerty";}
														%>
														<!-- New Comment-->

														<%
															for (int c = 0; c < pid.size(); c++) {
																																																																																	if(pid.get(c).equals(primaryid)){
														%>


														<li class="media">

															<div class="media-body">
																<div class="pull-right dropdown" data-show-hover="li">
																	<a href="#" data-toggle="dropdown"
																		class="toggle-button"> <i class="fa fa-pencil"></i>
																	</a>

																</div>
																<a href="" class="comment-author pull-left"><% out.println(session.getAttribute("email")); %>></a>
																<span> <%
 	out.println(content.get(c));
 %>
																</span>
																<div class="comment-date">18 Feb</div>
															</div>
														</li>
														<%
															}
																																																																																  }
														%>
													</ul>

													<!-- All Comments-->
												</div>
											</div>
										</div>
									</li>

									<%
										}
									%>

									<!-- Post Ends-->

									<!-- Post Ends-->

								</ul>

							</div>

						</div>
					</div>
				</div>
			</div>

			<!--CLOSING OF TABS-->
		</div>
	</div>

	<!-- Footer -->
	<jsp:include page="include/footer.html" />

	<script type="text/javascript">
		function displayOutput() {
			var desc = document.getElementById("description").value;
			var add = document.getElementById("add").value;
			var amt = document.getElementById("amt").value;
			var radios = document.getElementsByName("optradio");
			for (var i = 0, length = radios.length; i < length; i++) {
				if (radios[i].checked) {

					var opt = radios[i].value;

					break;
				}
			}

			if (opt.length == 0) {
				alert("Please enter a valid input");
				return;
			}
			document.getElementById("o").innerHTML = "Looking for a " + opt;
			document.getElementById("a").innerHTML = "Address: " + add;
			document.getElementById("d").innerHTML = "Description: " + desc;
			if (amt.length == 0) {
			} else {
				document.getElementById("r").innerHTML = "Rent: " + amt;
			}
		}
	</script>
</body>

</html>