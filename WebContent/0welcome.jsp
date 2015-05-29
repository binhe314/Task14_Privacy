<%@page import="java.util.List"%>
<%@page import="form.WelcomeForm"%>

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
			<jsp:include page="error-list.jsp" />

				<form role="form" method="post" action="welcome.do">
				
					<div class="form-group">
						<p class="help-block">Please upload file here if you want to
							continue previous work.</p>
						<label for="uploadFile">File upload</label>
						<input type="file"
							id="uploadFile" name="file" value="${filename}">
						<div style="text-align: right">
							<input type="submit" class="btn btn-default" name="upload" value="Upload File"/>
						</div>
					</div>
					<br>
					<h4>Or you can start a new form </h4>
					<br>
					<div class="form-group">
						<label for="name">Financial Institute Name</label><input
							type="text" class="form-control" name="companyName" placeholder="Please enter your company's name">
					</div>
					<div class="form-group">
						<label for="website">Website</label><input type="text"
							class="form-control" name="companyUrl" placeholder="Please enter your company's website address: http://">
					</div>
					
					<div class="form-group">
						<label for="website">Contact Number</label><input type="text"
							class="form-control" name="companyPhone" placeholder="Please enter your company's phone">
					</div>

					<div style="text-align: right">
						<input type="submit" class="btn btn-default" name="action" value="Continue" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

