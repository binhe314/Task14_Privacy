<%@page import="java.util.List"%>
<%@page import="form.WelcomeForm"%>

<html>
<head>

<title>Definition</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

<meta charset="UTF-8">

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

	<div class="col-md-2" role="complementary"></div>
	<div class="col-md-10">
		<form method="POST" action="definition.do">
			<legend>Definition</legend>
			<label><strong>Affiliates</strong></label> <br> Companies
			related by common ownership or control. They can be financial and
			nonfinancial companies. <br> Our affiliates include <br>
			
				<input type="text" size="72" name="generalAffiliates" value="generalAffiliates"
					placeholder="eg.  companies with a U.S. Bank and U.S. Bancorp name" />
			or see more at: <br> <input type="text" name="affiliateSeeMoreAt" value="affiliateSeeMoreAt" placeholder="http://"
				size="80" /><br>
			financial companies such as<br>
			<div id="newCompany">
				<input type="text" name="affiliateList" value="affiliateList" placeholder="Company Name" /> 
				<button type="submit" class="btn" onclick="addComp()">Add
					another financial company</button>
			</div>
		
			<hr>
			<label><strong>Nonaffiliates</strong></label> <br>
			<textarea
			name="nonAffiliates" value="nonAffiliates"
				placeholder="Nonaffiliates we share with can include financial services companies such as insurance agencies or mortgage brokers, nonfinancial companies such as retailers, travel companies and membership groups, other companies such as nonprofit groups."
				rows="4" cols="100"></textarea>

			<hr>
			<label><strong>Joint marketing</strong></label> <br>
			<p>A formal agreement between nonaffiliated financial companies
				that together market financial products or services to you.</p>
			<textarea
			name="jointMarketing" value="jointMarketing"
				placeholder="Our joint marketing partners include financial service companies."
				rows="4" cols="100"></textarea>

			<br><br>
			<div style="text-align: right">
				<input type="submit" class="btn btn-default" name="action"
					value="Previous"> <input type="submit"
					class="btn btn-default" name="action" value="Continue">
				<button type="submit" class="btn btn-default">
					<a href="task14.jsp">Preview</a>
				</button>

			</div>

		</form>

	</div>


	<script>
	function addComp() {
		var newComp = document.getElementById("newCompany");
		newComp.innerHTML += "<br /><input type='text' name='affiliateList' placeholder='Company Name'/>";
	}
	</script>
</body>
</html>