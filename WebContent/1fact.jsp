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
		<div class="col-md-12 column">
			<form role="form" method="POST" action="fact.do">
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
					<p>Besides SSN, select only 5 more information types</p>
					<div id="addinput" onclick="checkBox()">
						<table>
							<tr>
								<td><input type="checkbox" name="checkbox" value="Income">
									Income</td>
								<td><input type="checkbox" name="checkbox"
									value="Account Balances"> Account Balances</td>
								<td><input type="checkbox" name="checkbox"
									value="Payment History"> Payment History</td>
								<td><input type="checkbox" name="checkbox"
									value="Transaction History"> Transaction History</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="checkbox"
									value="Transaction or Loss History"> Transaction or
									Loss History</td>
								<td><input type="checkbox" name="checkbox"
									value="Credit History"> Credit History</td>
								<td><input type="checkbox" name="checkbox"
									value="Credit Scores"> Credit Scores</td>
								<td><input type="checkbox" name="checkbox" value="Assets">
									Assets</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="checkbox"
									value="Investment Experience"> Investment Experience</td>
								<td><input type="checkbox" name="checkbox"
									value="Credit Based Insurance Scores"> Credit Based
									Insurance Scores</td>
								<td><input type="checkbox" name="checkbox"
									value="Insurance Claim History"> Insurance Claim
									History</td>
								<td><input type="checkbox" name="checkbox"
									value="Account Transactions"> Account Transactions</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="checkbox"
									value="Risk Tolerance"> Risk Tolerance</td>
								<td><input type="checkbox" name="checkbox"
									value="Medical Related Debts"> Medical Related Debts</td>
								<td><input type="checkbox" name="checkbox"
									value="Credit Card or other debt"> Credit Card or other
									debt</td>
								<td><input type="checkbox" name="checkbox"
									value="Mortgage Rates and Payments"> Mortgage Rates and
									Payments</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="checkbox"
									value="Retirement Assets"> Retirement Assets</td>
								<td><input type="checkbox" name="checkbox"
									value="Checking account information"> Checking account
									information</td>
								<td><input type="checkbox" name="checkbox"
									value="Employment Information retirement portfolio">
									Employment Information retirement portfolio</td>
								<td><input type="checkbox" name="checkbox"
									value="Wire Transfer Instructions"> Wire Transfer
									Instructions</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="checkbox"
									value="Medical Information"> Medical Information</td>
								<td><input type="checkbox" name="checkbox"
									value="Overdraft History"> Overdraft History</td>
								<td><input type="checkbox" name="checkbox"
									value="Purchase History"> Purchase History</td>
								<td></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="form-group">
					<h4>How?</h4>
					<p>All financial companies need to share customers’ personal information to run their everyday business. In the section below, we list the reasons financial companies can share their customers’ personal information; the reasons [insert institute name] chooses to share; and whether you can limit this sharing.
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
<script type="text/javascript">
		function checkBox() {

			var sum1 = 0;
			var checkboxes1 = document.getElementsByName('checkbox');

			for (var j = 0; j < checkboxes1.length; j++) {
				if (checkboxes1[j].checked) {
					sum1++;
				}
			}

			if (sum1 > 5) {
				document.getElementById("error5").style.display = "block";
				flag = false;

			} else {
				document.getElementById("error5").style.display = "none";
			}

		}
	</script>

</body>
</html>