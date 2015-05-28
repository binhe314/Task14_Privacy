<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Fact</title>
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
					 <h3>FACTS</h3>
					 <p>WHAT DOES <b>${company.companyName}</b> DO WITH YOUR PERSONAL INFORMATION?</p>
				</div>
				<div class="form-group">
					<h4>Why?</h4>
					<p>Financial companies choose how they share your personal information. Under federal law, that means personally identifiable information. Federal law gives consumers the right to limit some but not all sharing. Federal law also requires us to tell you how we collect, share, and protect your personal information. Please read this notice carefully to understand what we do.
					</p>
				</div>
				<div class="form-group">
					 <h4>What?</h4>
					 <p>The types of personal information we collect and share depend on the product or service you have with us. <br/>
					This information can include: <br/>
					- Social Security number and employment information <br/>
					- Account balances, transaction history and credit information <br/>
					- Assets and investment experience <br/>
					</p>
				</div>
				<div class="form-group">
					<h4>How?</h4>
					<p>All financial companies need to share customers’ personal information to run their everyday business. In the section below, we list the reasons financial companies can share their customers’ personal information; the reasons [insert institute name] chooses to share; and whether you can limit this sharing.
					</p>
				</div>
				<div style="text-align:right">
				<button type="submit" class="btn btn-default"><a href="welcome.jsp">Previous</a></button>
				<button type="submit" class="btn btn-default"><a href="2reason.jsp">Continue</a></button>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>