<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Who we are</title>
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
			<form role="form" method="POST" action="whoWeAre.do">
				<div class="form-group">
					 <h3>Who We Are?</h3>
				</div>
				<div class="form-group">
					<h4>who is providing this notice?</h4>
					<p>
					${company.companyName}
					</p>
				</div>
				<div class="form-group">
					 <h3>What We Do?</h3>
				</div>
				<div class="form-group">
					 <h4>How does ${company.companyName} 
					  protect my personal information?</h4>
					 <p>
					 To protect your personal information from unauthorized access and use, 
                     we use security measures that comply with federal law. These measures include 
                     computer safeguards and secured files and buildings. For more information, 
                     visit <input type="text" name="companyUrl" placeholder="http://" value=${company.companyUrl} >
					</p>
				</div>
				<div class="form-group">
					<h4>How does ${company.companyName} collect my personal information?</h4>
					<p>
					 We collect your personal information, for example, when you:<br>
                    <input type="checkbox" name="personalInfo" value="1" > Open an account or make deposits or withdrawals from your accounts<br>
                    <input type="checkbox" name="personalInfo" value="2" > Apply for a loan or use your credit or debit card<br>
                    <input type="checkbox" name="personalInfo" value="3" > Seek advice about your investment or retirement portfolio<br>
                    We also collect your personal information from others, such as credit bureaus, affiliates, or other companies.
					</p>
				</div>
				<div class="form-group">
					 <h4>Why can't I limit sharing?</h4>
					 <p>
					 Federal law gives you the right to limit only:<br>
                     <input type="checkbox" name="limit" value = "1" > Sharing for affiliates everyday business purposes information about your creditworthiness<br>
                     <input type="checkbox" name="limit" value = "2" > Affiliates from using your information to market to you<br>
                     <input type="checkbox" name="limit" value = "3" > Sharing for nonaffiliates to market to you<br>
                     State laws and individual companies may give you additional rights to limit sharing. See below for more on your rights under state law.
					</p>
				</div>
				<div class="form-group">
					 <h4>What happens when I limit sharing for an account I hold jointly with someone else?</h4>
					 <p>
					 Your choices will apply individually unless you tell us otherwise. Any account holder may 
                     express a privacy preference on behalf of the other joint account holders.
					</p>
				</div>
				<div style="text-align:right">
				<input type="submit" class="btn btn-default" name="action" value="Previous">
				<input type="submit" class="btn btn-default" name="action" value="Continue">
				<button type="submit" class="btn btn-default"><a href="task14.jsp">Preview</a></button>
				
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>
