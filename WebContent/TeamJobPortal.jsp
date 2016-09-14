<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

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




	<div class="container">

		<ul class="nav nav-tabs">
			<li><a href=newsfeed.jsp class="tabbold">News Feed</a></li>
		<li><a href=roommate.jsp class="tabbold">Roommate
				Finder</a></li>
		<li class="active"><a href="studentmarket.jsp" class="tabbold">Student Market</a></li>

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
													<img src="CSS/images/profilepic.png" alt="people"
														class="img-circle" width="80" />
													<div>
														<a href="#">Smit S.</a>
													</div>
													<div class="date">19 FEB</div>
												</div>
											</div>
											<div class="media-body">
											<div class="media-body-wrapper">
												<div class="row">
													<div class="col-md-10 col-lg-8">
														<div class="panel panel-default">
															<form action="TeamJobPortalServlet" method="post">
																<div class="panel-heading panel-heading-gray ">

																	Please fill out the form:</div>
																<div class="panel-body">
																	<label class="radio-inline">Select Location : 
																		<input type="radio" name="location" value="oncampus">On Campus
																	</label> <label class="radio-inline"><input
																		type="radio" name="location" value="offcampus">Off Campus</label>
																	<br><label><div class="dropdown">
																	  Select The Category:
																	   <br>
																	 <select name="category" id="type1" required>
																	   <option value="Default">Choose a Category</option>
																	   <option value="Computer Science">Computer Science</option>
																	   <option value="Management">Management</option>
																	   <option value="Finance">Finance</option>
																	   <option value="Economics">Economics </option>
																	</select> 
																	  </div></label>
																	 <br> Job description <br>
																	<textarea name="description" id="description"
																		class="form-control" rows="3"
																		placeholder="Description of Job..." required></textarea>
																	<br> <label for="requirement">Requirement :</label> <input
																		type="text" class="form-control" id="add"
																		name="requirement" /> <br> <label for="requirement" required>Deadline Date:</label>
																	<input type="date"  id="date"
																		name="date" /><br>
																		<label >Apply at :</label>
																	<input type="text" id="url"
																		name="url"  /><br>
																		<label >Contact Email:</label>
																	<input type="email" class="form-control" id="contact"
																		name="email"  required>
																		<input type="hidden" name="pid" value="0">
																</div>
																<div class="panel-footer share-buttons">
																	<input type="submit"
																		class="btn btn-primary btn-xs pull-right "
																		name="action" class="btn btn-primary" value="Post" />
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
										<div id="newDivs"></div>
										<li class="media media-clearfix-xs">
											<div class="media-left">
												<div class="user-wrapper">
													<img src="CSS/images/profilepic.png" alt="people"
														class="img-circle" width="80" />

													<div>
														<a href="#">Smit S.</a>
													</div>
													<div class="date">19 FEB</div>
												</div>
											</div>
											<div class="media-body">
												<div class="media-body-wrapper">
													<div class="panel panel-default">

														<div class="panel-body">
															<p id="o">Its Snowing!!</p>

															<div id="a"></div>
															<div id="d"></div>
															<div id="r"></div>
														</div>
														<!-- All Comments-->
														<ul class="comments">


															<!-- New Comment-->
															<li class="comment-form">
																<div class="input-group">

																	<input type="text" class="form-control" /> <span
																		class="input-group-btn"> <a href=""
																		class="btn btn-primary">Comment</a>
																	</span>

																</div>
															</li>

															<!-- New Comment-->
														</ul>

														<!-- All Comments-->
													</div>
												</div>
											</div>
										</li>

										<!-- Post Ends-->


										<!-- Post Starts-->

										<li class="media media-clearfix-xs">
											<div class="media-left">
												<div class="user-wrapper">
													<img src="CSS/images/profilepic.png" alt="people"
														class="img-circle" width="80" />

													<div>
														<a href="#">Akash A..</a>
													</div>
													<div class="date">11 FEB</div>
												</div>
											</div>
											<div class="media-body">
												<div class="media-body-wrapper">
													<div class="panel panel-default">

														<div class="panel-body">
															<p>If my ceiling fan could hold my weight, I'd never
																be bored again.</p>

														</div>
														<!-- All Comments-->
														<ul class="comments">



															<!-- New Comment-->
															<li class="comment-form">
																<div class="input-group">

																	<input type="text" class="form-control" /> <span
																		class="input-group-btn"> <a href=""
																		class="btn btn-primary">Comment</a>
																	</span>

																</div>
															</li>

															<!-- New Comment-->
														</ul>

														<!-- All Comments-->
													</div>
												</div>
											</div>
										</li>

										<!-- Post Ends-->



										<!-- Post Starts-->

										<li class="media media-clearfix-xs">
											<div class="media-left">
												<div class="user-wrapper">
													<img src="CSS/images/profilepic.png" alt="people"
														class="img-circle" width="80" />

													<div>
														<a href="#">Akash A..</a>
													</div>
													<div class="date">11 FEB</div>
												</div>
											</div>
											<div class="media-body">
												<div class="media-body-wrapper">
													<div class="panel panel-default">

														<div class="panel-body">
															<p>My alarm clock and I had a fight this morning. It
																wanted me to get up, I refused...things escalated. Now
																I'm awake and it's broken. I am not sure who won the
																fight.</p>

														</div>
														<!-- All Comments-->
														<ul class="comments">



															<!-- New Comment-->
															<li class="comment-form">
																<div class="input-group">

																	<input type="text" class="form-control" /> <span
																		class="input-group-btn"> <a href=""
																		class="btn btn-primary">Comment</a>
																	</span>

																</div>
															</li>

															<!-- New Comment-->
														</ul>

														<!-- All Comments-->
													</div>
												</div>
											</div>
										</li>

										<!-- Post Ends-->


										<!-- Post Starts-->

										<li class="media media-clearfix-xs">
											<div class="media-left">
												<div class="user-wrapper">
													<img src="CSS/images/profilepic.png" alt="people"
														class="img-circle" width="80" />

													<div>
														<a href="#">Akash A..</a>
													</div>
													<div class="date">11 FEB</div>
												</div>
											</div>
											<div class="media-body">
												<div class="media-body-wrapper">
													<div class="panel panel-default">

														<div class="panel-body">
															<p>I mistook the Facebook status box for Google
																search!!</p>

														</div>
														<!-- All Comments-->
														<ul class="comments">

															<!-- Comment Start-->
															<li class="media">

																<div class="media-body">
																	<div class="pull-right dropdown" data-show-hover="li">
																		<a href="#" data-toggle="dropdown"
																			class="toggle-button"> <i class="fa fa-pencil"></i>
																		</a>

																	</div>
																	<a href="" class="comment-author pull-left">Bill D.</a>
																	<span>It happened to me!</span>
																	<div class="comment-date">18 Feb</div>
																</div>
															</li>
															<!-- Comment End-->

															<!-- New Comment-->
															<li class="comment-form">
																<div class="input-group">

																	<input type="text" class="form-control" /> <span
																		class="input-group-btn"> <a href=""
																		class="btn btn-primary">Comment</a>
																	</span>

																</div>
															</li>

															<!-- New Comment-->
														</ul>

														<!-- All Comments-->
													</div>
												</div>
											</div>
										</li>

										<!-- Post Ends-->
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