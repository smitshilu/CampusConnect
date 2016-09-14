<%@ page import="java.util.*"%>
<%@page import="dataBase.AuthDAO"%>
<%@page import="model.GetRoomMateFeed"%>

<%
if (session.isNew())
	response.sendRedirect("index.jsp");
%>

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
		<li><a href="studentmarket.jsp" class="tabbold">Student
				Market</a></li>

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
									<%
										AuthDAO ad = new AuthDAO();
									%>
									<li class="media media-clearfix-xs">
										<div class="media-left">
											<div class="user-wrapper">
												<img src="<%=session.getAttribute("photopath")%>"
													alt="people" class="img-circle" width="80" height="80" />
												<a href="#"> <%
 	out.println(session.getAttribute("email"));
 %>
												</a>
												<%
													Date dt = new java.util.Date();
													java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
															"yyyy-MM-dd");
													String datenow = sdf.format(dt);

													ArrayList<GetRoomMateFeed> newsfeed = new ArrayList<>();
													ArrayList<GetRoomMateFeed> comment = new ArrayList<>();
													newsfeed = (ArrayList<GetRoomMateFeed>) session
															.getAttribute("roommatefeed");
												%>
												<div class="date">
													<%
														out.println(datenow);
													%>
												</div>
											</div>
										</div>
										<div class="media-body">
											<div class="media-body-wrapper">
												<div class="row">
													<div class="col-md-10 col-lg-8">
														<div class="panel panel-default">
															<form action="PostRoomMateFeed" method="post">
																<div class="panel-heading panel-heading-gray ">

																	Please fill out the form below:</div>
																<div class="panel-body">
																	<label class="radio-inline"> <input
																		onclick="document.getElementById('amt').disabled = true;"
																		type="radio" name="optradio" value="Roommate">Roommate
																	</label> <label class="radio-inline"><input
																		type="radio" name="optradio" value="House">House</label>
																	<br> <br>
																	<textarea name="description" id="description"
																		class="form-control" rows="3"
																		placeholder="Description..."></textarea>
																	<br> <label for="address">Address:</label> <input
																		type="text" class="form-control" id="add"
																		name="address" /> <br> <label for="address">Amount/Rent:</label>
																	<input type="text" class="form-control" id="amt"
																		name="amount" />
																		<input type="hidden" name="pid" value="0">
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
										comment = newsfeed;
										for (int i = 0; i < newsfeed.size(); i++) {
											if ((newsfeed.get(i).getParentID()).equals("0")) {
									%>
									<!-- Post Starts-->

									<li class="media media-clearfix-xs">
										<div class="media-left">
											<div class="user-wrapper">
												<img
													src="CSS/images/<%=ad.getPhoto(newsfeed.get(i).getEmail())%>"
													alt="people" class="img-circle" width="80" height="80" />

												<div>
													<a
														href="viewprofile.jsp?Email=<%=newsfeed.get(i).getEmail()%>">
														<%
															out.println((String) newsfeed.get(i).getEmail());
														%>
													</a>
												</div>
												<div class="date">
													<%
														out.write(newsfeed.get(i).getTime());
													%>
												</div>
											</div>
										</div>
										<div class="media-body">
											<div class="media-body-wrapper">
												<div class="panel panel-default">

													<div class="panel-body">
														<p id="o">


															<%
																out.println("Searching for: "
																				+ newsfeed.get(i).getRoommatetype());
															%>

															<br>

															<%
																out.println("Description: "
																				+ newsfeed.get(i).getDescription());
															%><br>
															<%
															if(!(newsfeed.get(i).getAddress()).equals("null"))
																out.println("Address: " + newsfeed.get(i).getAddress());
															%><br>
															<%
															if(!(newsfeed.get(i).getAmount()).equals("null"))
																out.println("Amount: " + newsfeed.get(i).getAmount());
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
																<form action="PostRoomMateFeed" method="post">
																	<input type="text" class="form-control" name="description" />
																	<input name="pid" type="hidden"
																		value="<%=newsfeed.get(i).getID()%>"> <span
																		class="input-group-btn"> <input type="submit"
																		name="action" class="btn btn-primary" value="reply" />
																	</span>
																</form>
															</div>
														</li>
														<!-- New Comment-->

														<%
															for (int j = 0; j < comment.size(); j++) {
																		if (newsfeed.get(j).getParentID()
																				.equals(newsfeed.get(i).getID())) {
														%>
														<li class="media">

															<div class="media-body">
																<div class="pull-right dropdown" data-show-hover="li">
																	<a href="#" data-toggle="dropdown"
																		class="toggle-button"> <i class="fa fa-pencil"></i>
																	</a>

																</div>
																<a
																	href="viewprofile.jsp?Email=<%=newsfeed.get(j).getEmail()%>"
																	class="comment-author pull-left"> <%
 	out.write(newsfeed.get(j).getEmail());
 %>
																</a> <span> <%
 	out.write(newsfeed.get(j).getDescription());
 %>
																</span>
																<div class="comment-date">
																	<%
																		out.write(newsfeed.get(j).getTime());
																	%>
																</div>
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

</body>

</html>