<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Opt-out</title>
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
			<form role="form" method="POST" action="optOut.do" >
				<div class="form-group">
					<h4>To limit our sharing</h4>
					<p>
					<input type="checkbox" name="limitSharing" value="1" > Call <input type="text" name="companyPhone" value=${company.companyPhone}>
					 our menu will prompt you through your choices.<br>
                    <input type="checkbox" name="limitSharing" value="2" >Online banking customers log on to a secure session at <input type="text" name="companyUrl" value=${company.companyUrl}>
					
                    , and choose Change Privacy Preferences under the Account Services tab.<br>
                    <input type="checkbox" name="limitSharing" value="3" >Talk to a banking center associate<br>
                    <input type="checkbox" name="limitSharing" value="4" >Talk to your assigned account representative (e.g., financial advisor, mortgage loan officer)<br>
                    <b>Please note:<br></b>
                     If you are a new customer, we can begin sharing your information <input type="text" name="day"> 
                    days from the date we sent this notice. When you are no longer our customer, we can continue to share
                     your information as described in this notice. However, you can contact us at any time to limit our
                    sharing.
					</p>
				</div>
				<div class="form-group">
					 <h4>To limit direct marketing</h4>
					 <p>
					 <input type="checkbox" name="limitMarketing" value="1" > Call<input type="text" name="companyPhone" value=${company.companyPhone}>
					 our menu will prompt you through your choices.<br>
                     <input type="checkbox" name="limitMarketing" value="2" >Online banking customers log on to a secure session at <input type="text" name="companyUrl" value=${company.companyUrl}>
					 , and choose Change Privacy Preferences under the Account Services tab.<br>
                     <input type="checkbox" name="limitMarketing" value="3" >Talk to a banking center associate<br>
                     <input type="checkbox" name="limitMarketing" value="4" >Talk to your assigned account representative (e.g., financial advisor, mortgage loan officer)<br>
                     <b>Please note:<br></b>
                     A Do Not Call election is effective for <input type="text" name="year1" value=${company.year1}> years, or while you are an active consumer customer, if longer than <input type="text" name="year1" value=${company.year1}> years. The Do Not Mail election is effective for <input type="text" name="year2" value=${company.year2}> years.
                     You may continue to receive marketing information in regular account mailings and statements when you visit us online or at an ATM.
                     You may also be contacted to service your account or participate in surveys. If you have an assigned client manager or team, they may continue to contact you to assist you in managing your portfolio or account relationship.
					</p>
				</div>
				<div class="form-group">
					<h4>Questions</h4>
					<p>
					Call <input type="text" name="companyPhone" value=${company.companyPhone}> or go to <input type="text" name="companyUrl" value=${company.companyUrl}>
					</p>
				</div>
				<div style="text-align:right">
				<button type="submit" class="btn btn-default"><a href="2reason.jsp">Previous</a></button>
				<button type="submit" class="btn btn-default"><a href="4who we are.jsp">Continue</a></button>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>


