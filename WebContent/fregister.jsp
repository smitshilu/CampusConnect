<html>
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
<script type="text/javascript" src="jquery-1.11.3.min.js"></script>

<link href="CSS/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="scripts/scripts.js"></script>
<body>


	<!-- NAV BAR-->
	<nav class="navbar navbar-custom navbar-fixed-top gold"
		role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">


				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-main-collapse">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="index.html"> <i
					class="fa fa-play-circle"></i> <span class="light">Campus</span>
					Connect
				</a>

			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Register</a></li>
					<li><a href="login.html">Login</a></li>
					<li class="dropdown"></li>
				</ul>


			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>


	<!-- NAV BAR-->
	<br>
	<div style="color: white" id="error"></div>
	<form id="valid">
		<br> <br> <br>

		<div class="col-sm-5 form-box ">
			<div class="form-top center_div">
				<div class="form-top-left">
					<h3 style="color: white">Faculty - Sign up now</h3>
					<p style="color: white">Fill in the form below to register:</p>
				</div>
				<div class="form-top-right">
					<i class="fa fa-pencil"></i>
				</div>
			</div>
			<div class="form-bottom">
				<form role="form" action="" method="post"
					class="registration-form center_div">
					<div class="form-group">
						<label style="color: white" class="" for="ffname">First
							name</label> <input type="text" name="ffname" placeholder="First name..."
							class="form-first-name form-control" id="form-first-name"
							required>
					</div>
					<div class="form-group">
						<label style="color: white" class="" for="flname">Last
							name</label> <input id="phone" type="text" name="flname"
							placeholder="Last name..." class="form-last-name form-control"
							id="form-last-name" required>
					</div>
					<div class="form-group">
						<label style="color: white" class="" for="femail">Email</label> <input
							id="email" type="text" name="femail" placeholder="Email..."
							class="form-email form-control" id="form-email" required>
					</div>

					<div class="form-group">
						<label style="color: white" class="" for="fdob">Date of
							Birth</label> <input type="text" name="fdob" placeholder="mm-dd-yyyy"
							class="form-email form-control" id="form-email" required>
					</div>
					<div style="color: white" class="form-group">
						<label class="" for="fsex">Gender</label> <input type="text"
							name="fsex" placeholder="Gender..."
							class="form-email form-control" id="form-email" required>
					</div>
					<div class="form-group">
						<label style="color: white" class="" for="fpwd">Password</label> <input
							type="password" name="fpwd" placeholder="Password"
							class="form-password form-control" id="form-password" required></input>
					</div>
					<a type="submit" class="btn btn-lg btn-default" href="#acads">Next</a>
				</form>
			</div>
		</div>




		<!-- Academics form-->
		<div class="spacing"></div>

		<section id="login" class="content-section  padbot">

			<div id="acads" class="col-sm-5 form-box content-section ">


				<div class="form-top center_div">
					<div class="form-top-left">

						<p style="color: white">Fill in the Academic interests below
							to register:</p>
					</div>

				</div>
				<div class="form-bottom">
					<form role="form" action="" method="post"
						class="registration-form center_div">
						<div class="form-group">
							<label style="color: white" class="" for="department">Department</label><br>


							<select>
								<option value="volvo">Computer Science</option>
								<option value="saab">Performing Arts</option>
								<option value="opel">Physics</option>
								<option value="audi">Biology</option>
							</select>




						</div>
						<div class="form-group">
							<label style="color: white" class="" for="courses">Courses
								Offered</label> <input type="text" name="courses"
								placeholder="Class of..." class="form-last-name form-control"
								id="form-last-name">
						</div>
						<div class="form-group">
							<label style="color: white" class="" for="rarea">Research
								Area</label> <input type="text" name="rarea" placeholder="Interest..."
								class="form-email form-control" id="form-email">
						</div>
						<div class="form-group">
							<label style="color: white" class="" for="ohours">Office
								Hours</label> <input type="text" name="ohours" placeholder="Interest..."
								class="form-email form-control" id="form-email">
						</div>
						<div class="form-group">
							<label style="color: white" class="" for="olocation">Office
								Location</label> <input type="text" name="olocation"
								placeholder="Interest..." class="form-email form-control"
								id="form-email">
						</div>

						<input type="submit" class="btn btn-lg btn-default"
							value="Im Done!">
					</form>
				</div>
			</div>





		</section>
	</form>

	<div class="spacing"></div>


	<p>Footer</p>

</body>

<script>
	$("#valid").submit(function(event) {

		var error = "";

		event.preventDefault();

		if (!isValidEmailAddress($("#email").val())) {

			error = "<br> email address not valid";

		}

		if (!$.isNumeric($("#phone").val())) {

			error = error + "<br> phone number not valid";

		}

		if (error == "") {

			alert("Done!");

		} else {

			$("#error").html(error);
		}
	});

	function isValidEmailAddress(emailAddress) {
		var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
		return pattern.test(emailAddress);
	};
</script>

</html>