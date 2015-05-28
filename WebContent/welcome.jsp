<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Welcome to Form Builder</title>
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
		<div class="col-md-6 column">
			<form role="form">
				<div class="form-group">
					 <label for="name">Financial Institute Name</label><input type="text" class="form-control" id="name">
				</div>
				<div class="form-group">
					 <label for="website">Website</label><input type="text" class="form-control" id="website">
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">File upload</label><input type="file" id="exampleInputFile">
					<p class="help-block">
						 Please upload file if you want to continue previous modification.
					</p>
				</div>
				<div style="text-align:right">
				<button type="submit" class="btn btn-default"><a href="1fact.html">Continue</a></button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>

