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
				<form>
						 <legend>Definition</legend> 
						 <label><strong>Affiliates</strong></label>
						 <br>
						 Companies related by common ownership or control. They can be financial and nonfinancial companies.
						 <br>
						 Our affiliates include <br>
						 <div id="newDescription">
						 <input type="text" size="72" placeholder="eg.  companies with a U.S. Bank and U.S. Bancorp name"/>  <button type="submit" class="btn" onclick="addDesc()">Add a general description</button>
						 </div>
						 financial companies such as<br>
						 <div id="newCompany">
						 <input type="text" placeholder="Company Name"/>   <input type="text" placeholder="http://" size="50"/>   <button type="submit" class="btn" onclick="addComp()">Add another fanical company</button>
						 </div>
						 or see more at: <br>
						 <input type="text" placeholder="http://" size="80" /><br>
						 <hr>
						 <label><strong>Nonaffiliates</strong></label>
						 <br>
						 <textarea placeholder="Nonaffiliates we share with can include financial services companies such as insurance agencies or mortgage brokers, nonfinancial companies such as retailers, travel companies and membership groups, other companies such as nonprofit groups." rows="4" cols="100"></textarea> 
						 
						 <hr>
						 <label><strong>Joint marketing</strong></label>
						 <br>
						 <p>
							 A formal agreement between nonaffiliated financial companies that together market financial products or services to you.					 </p>
							 <textarea placeholder="·Our joint marketing partners include financial service companies." rows="4" cols="100"></textarea> 
							 
							<div style="text-align:right"> 
					<button type="submit" class="btn btn-default"><a href="4Who we are.html">Previous</a></button>
				<button type="submit" class="btn btn-default"><a href="6other information1.html">Continue</a></button>
</div>						 

				</form>
				
	</div>
	
	
	<script>
	function addDesc(){
		var newDesc = document.getElementById("newDescription");
		newDesc.innerHTML += "<br /><input type='text' size='72' placeholder='eg.  companies with a U.S. Bank and U.S. Bancorp name'/>";
	}	
	
	function addComp() {
		var newComp = document.getElementById("newCompany");
		newComp.innerHTML += "<br /><input type='text' placeholder='Company Name'/> <input type='text' placeholder='http://' size='50' />";
	}
	</script>
</body>
</html>