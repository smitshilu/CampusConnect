<%@ page import="model.FacultyProfile"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.*"%>
<%@ page import="dataBase.AuthDAO"%>
<!doctype html>

<html lang="en-gb" class="no-js">

<head>

<%
	if ((session.getAttribute("email")) == null)
		response.sendRedirect("index.jsp");

String temp_email = (String) request.getParameter("Email");
AuthDAO ad = new AuthDAO();
PrintWriter pwout = response.getWriter();
response.setContentType("text/html");

%>

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

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<title>My Profile</title>
<meta name="description" content="">




<link rel="stylesheet" href="CSS/indexstyle.css">
<!-- Font Awesome -->

</head>

<body>
	<header class="header"> </header>
	<!--/.header-->




	<%

if((ad.getType(temp_email)).equals("3")) {
ArrayList<FacultyProfile> studentprofilearray = ad.getFacultyProfile(temp_email);

String fname = studentprofilearray.get(0).getFname();
String lname = studentprofilearray.get(0).getLname();
String dob = studentprofilearray.get(0).getDob();
String sex = studentprofilearray.get(0).getFsex();
String department = studentprofilearray.get(0).getFdept();
String courses = studentprofilearray.get(0).getFcourse();
String rarea = studentprofilearray.get(0).getFrarea();
String ohours = studentprofilearray.get(0).getFofhours();
String flocation = studentprofilearray.get(0).getFofloc();
String photopath = "CSS/images/"+ad.getPhoto(temp_email);



	pwout.write("<body>");
	pwout.write("<header class='header'> </header>");
%>


	<!-- Navigation -->
	<jsp:include page="include/fnavbar.html" />

	<br>
	<br>
	<br>

	<div id="#top"></div>

	<section id="aboutUs">
		<div class="container">
			<div class="row">
				<!-- item -->
				<div class="col-md-4 tileBox">
					<img src="CSS/images/photo-1.jpg"><br> <br> <br>
					<input type="file" name="file"><br> <input
						type="submit" value="Upload">
				</div>
				<div class="col-md-8 tileBox">
					<div class="txtHead">
						<h2>
							Hello, I am <span name="ffn"><%= fname %></span><span name="fln">
								<%= lname %>...</span>
						</h2>


					</div>


					<p name="femail">
						<b>Email:</b> <%= temp_email %>
					</p>
					<p name="fdob">
						<b>Date of Birth:</b> <%= dob %>
					</p>
					<p name="fsex">
						<b>Gender:</b> <%= sex %>
					</p>
					<p name="department">
						<b>Department:</b> <%= department %>
					</p>
					<p name="frarea">
						<b>Research Areas:</b> <%= rarea %>
					</p>
					<p name="fofficehours">
						<b>Office Hours:</b> <%= ohours %>
					</p>
					<p name="flocation">
						<b>Location:</b> <%= flocation %>
					</p>

				</div>
				<!-- end: -->
			</div>
		</div>
	</section>
<%
}
%>
	<!--Skills-->
	<section id="skills" class="secPad white">
		<div class="container">
			<div class="heading ">
				<!-- Heading -->

			</div>


			<!-- Footer -->
			<jsp:include page="include/footer.html" />
</body>
</html>
