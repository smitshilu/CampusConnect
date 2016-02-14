<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
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

<link href="CSS/style.css" rel="stylesheet">
<script src="scripts/grayscale.js"></script>
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

	<!-- Wrapper required for sidebar transitions -->


	<!-- Fixed navbar -->

	<!-- Navigation -->
	<jsp:include page="include/navbarfinal.html" />



	<br>
	<br>
	<br>

	<!--tabs-->




	<div class="container">
		<jsp:include page="include/subnavbarfinal.html" />

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
															<div class="panel panel-default share clearfix-xs">
																<div class="panel-heading panel-heading-gray title">
																	What&acute;s new</div>
																<div class="panel-body">
																	<center>
																		<textarea name="status"
																			class="form-control share-text" rows="3"
																			placeholder="Share your status..."></textarea>
																	</center>
																</div>
																<div class="panel-footer share-buttons">
																	<a href="#"><i class="fa fa-map-marker"></i></a> <a
																		href="#"><i class="fa fa-photo"></i></a> <a href="#"><i
																		class="fa fa-video-camera"></i></a>
																	<button type="submit"
																		class="btn btn-primary btn-xs pull-right " href="#">Post</button>
																</div>
															</div>
														</div>
													</div>
													<div class="clearfix"></div>
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
															<p>Its Snowing!!</p>
															<div class="timeline-added-images">
																<img src="CSS/images/snow.jpg" width="80" alt="photo" />
																<img src="CSS/images/UAlbanysnow.jpg" width="80"
																	alt="photo" />

															</div>
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
																	<span>Yes its snowing, I know!</span>
																	<div class="comment-date">18 Feb</div>
																</div>
															</li>

															<!-- Comment End-->

															<!-- Comment Start-->
															<li class="media">

																<div class="media-body">
																	<div class="pull-right dropdown" data-show-hover="li">
																		<a href="#" data-toggle="dropdown"
																			class="toggle-button"> <i class="fa fa-pencil"></i>
																		</a>

																	</div>
																	<a href="" class="comment-author pull-left">Bill D.</a>
																	<span>Yes its snowing, I know!</span>
																	<div class="comment-date">18 Feb</div>
																</div>
															</li>
															<!-- Comment End-->

															<!-- Comment Start-->
															<li class="media">

																<div class="media-body">
																	<div class="pull-right dropdown" data-show-hover="li">
																		<a href="#" data-toggle="dropdown"
																			class="toggle-button"> <i class="fa fa-pencil"></i>
																		</a>

																	</div>
																	<a href="" class="comment-author pull-left">Bill D.</a>
																	<span>Yes its snowing, I know!</span>
																	<div class="comment-date">18 Feb</div>
																</div>
															</li>
															<!-- Comment End-->

															<!-- New Comment-->
															<li class="comment-form">
																<div class="input-group">

																	<input type="text" class="form-control" /> <span
																		class="input-group-btn"> <a href=""
																		class="btn btn-default">Comment</a>
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
																		class="btn btn-default">Comment</a>
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
																		class="btn btn-default">Comment</a>
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
																		class="btn btn-default">Comment</a>
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
		<footer>
			<div class="container text-center">
				<p style="color: white;">Copyright &copy; Campus Connect 2016</p>
			</div>
		</footer>
</body>

</html>