
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Other information</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand">Interactive Form Builder</a>
			</div>

			<!--/.navbar-collapse -->
		</div>
	</nav>
	<br />
	<br />
	<br />
	<br />
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">

				<form action="otherInfo.do" method="post">
					<h4>Institute Location</h4>
					<br> <b> Is your institute located and have business in
						one of the three states in US, California, Vermont, Neveda? </b> 
						<select name="location">
						<option value="Yes" name="Yes">Yes</option>
						<option value="No" name="No">No</option>
						</select>
					<br><br>
					<div style="text-align: right">
						<button type="submit" class="btn btn-default">
							<a href="5definition.jsp">Previous</a>
						</button>
						<button type="submit" class="btn btn-default">Continue</button>
						<button type="submit" class="btn btn-default">
							<a href="task14.jsp">Preview</a>
						</button>

					</div>
				</form>

			</div>
		</div>
	</div>
</body>
</html>




