<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Reason</title>
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
				<form role="form" id="form" method="POST" action="reason.do">
					<table class="table">
						<thead>
							<tr>
								<th>Reasons we can share your personal information</th>
								<th>Does ${company.companyName} share?</th>
								<th>Can you limit this sharing?</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><b>For our everyday business purposes </b> — such as to
									process your transactions, maintain your account(s), respond to
									court orders and legal investigations, or report to credit
									bureaus</td>
								<td>
									<div class="btn-group">
										<select id="first" name="shareOrNot" onclick="change1(this)">
										    <option value=" " selected="selected"> </option>
											<option id="yes" value="Yes">Yes</option>
											<option id="no" value="No">No</option>
										</select>
									</div>
								</td>


								<td>
									<div class="btn-group">
										<select id="second" name="shareLimit">
											<option id="yes12" value="Yes">Yes</option>
											<option id="no12" value="No">No</option>
											<option id="unknown12" value="Noshare">We don't
												share it</option>

										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><b>For our marketing purposes </b> – to offer our
									products and services to you</td>
								<td>
									<div class="btn-group">
										<select id="first" name="shareOrNot" onclick="change2(this)">
										    <option value=" " selected="selected"> </option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</td>
								<td>
									<div class="btn-group">
										<select id="second" name="shareLimit">
											<option id="yes22" value="Yes">Yes</option>
											<option id="no22" value="No">No</option>
											<option id="unknown22" value="Noshare">We don't
												share it</option>

										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><b>For joint marketing with other financial
										companies</b></td>
								<td>
									<div class="btn-group">
										<select id="first" name="shareOrNot" onclick="change3(this)">
										    <option value=" " selected="selected"> </option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</td>
								<td>
									<div class="btn-group">
										<select id="second" name="shareLimit">
											<option id="yes32" value="Yes">Yes</option>
											<option id="no32" value="No">No</option>
											<option id="unknown32" value="Noshare">We don't
												share it</option>

										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><b> For our affiliates' everyday business purposes
								</b> – information about your transactions and experiences</td>
								<td>
									<div class="btn-group">
										<select id="first" name="shareOrNot" onclick="change4(this)">
										    <option value=" " selected="selected"> </option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</td>
								<td>
									<div class="btn-group">
										<select id="second" name="shareLimit">
											<option id="yes42" value="Yes">Yes</option>
											<option id="no42" value="No">No</option>
											<option id="unknown42" value="Noshare">We don't
												share it</option>

										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><b> For our affiliates' everyday business purposes
								</b> – information about your creditworthiness</td>
								<td>
									<div class="btn-group">
										<select id="first" name="shareOrNot" onclick="change5(this)">
										    <option value=" " selected="selected"> </option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</td>
								<td>
									<div class="btn-group">
										<select id="second" name="shareLimit">
											<option id="yes52" value="Yes">Yes</option>
											<option id="no52" value="No">No</option>
											<option id="unknown52" value="Noshare">We don't
												share it</option>

										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><b> For our affiliates to market to you</b></td>
								<td>
									<div class="btn-group">
										<select id="first" name="shareOrNot" onclick="change6(this)">
										    <option value=" " selected="selected"> </option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</td>
								<td>
									<div class="btn-group">
										<select id="second" name="shareLimit">
											<option id="yes62" value="Yes">Yes</option>
											<option id="no62" value="No">No</option>
											<option id="unknown62" value="Noshare">We don't
												share it</option>

										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><b> For nonaffiliates to market to you </b> — for all
									credit card accounts</td>
								<td>
									<div class="btn-group">
										<select id="first" name="shareOrNot" onclick="change7(this)">
										    <option value=" " selected="selected"> </option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</td>
								<td>
									<div class="btn-group">
										<select id="second" name="shareLimit">
											<option id="yes72" value="Yes">Yes</option>
											<option id="no72" value="No">No</option>
											<option id="unknown72" value="Noshare">We don't
												share it</option>

										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><b> For nonaffiliates to market to you </b> — for
									accounts and services endorsed by another organization (e.g.,
									debit card co-branded with a baseball team) “Sponsored
									Accounts”</td>
								<td>
									<div class="btn-group">
										<select id="first" name="shareOrNot" onclick="change8(this)">
										    <option value=" " selected="selected"> </option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</td>
								<td>
									<div class="btn-group">
										<select id="second" name="shareLimit">
											<option id="yes82" value="Yes">Yes</option>
											<option id="no82" value="No">No</option>
											<option id="unknown82" value="Noshare">We don't
												share it</option>

										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td><b> For nonaffiliates to market to you </b> — for
									accounts other than credit card accounts and Sponsored
									Accounts, such as insurance, investments, deposit and lending</td>
								<td>
									<div class="btn-group">
										<select id="first" name="shareOrNot" onclick="change9(this)">
										    <option value=" " selected="selected"> </option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</td>
								<td>
									<div class="btn-group">
										<select id="second" name="shareLimit">
											<option id="yes92" value="Yes">Yes</option>
											<option id="no92" value="No">No</option>
											<option id="unknown92" value="Noshare">We don't
												share it</option>

										</select>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

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
		</div>
	</div>

	<script>
		function change1(a) {
			var x = (a.value || a.options[a.selectedIndex].value);
			if (x == "No") {
				document.getElementById("yes12").disabled = true;
				document.getElementById("no12").disabled = true;
				document.getElementById("unknown12").selected = true;
			} else if (x == "Yes") {
				document.getElementById("yes12").disabled = false;
				document.getElementById("yes12").selected = true;
				document.getElementById("no12").disabled = false;
				document.getElementById("unknown12").disabled = true;
			}
		}

		function change2(a) {
			var x = (a.value || a.options[a.selectedIndex].value);
			if (x == "No") {
				document.getElementById("yes22").disabled = true;
				document.getElementById("no22").disabled = true;
				document.getElementById("unknown22").selected = true;
			} else if (x == "Yes") {
				document.getElementById("yes22").disabled = false;
				document.getElementById("yes22").selected = true;
				document.getElementById("no22").disabled = false;
				document.getElementById("unknown22").disabled = true;
			}
		}

		function change3(a) {
			var x = (a.value || a.options[a.selectedIndex].value);
			if (x == "No") {
				document.getElementById("yes32").disabled = true;
				document.getElementById("no32").disabled = true;
				document.getElementById("unknown32").selected = true;
			} else if (x == "Yes") {
				document.getElementById("yes32").disabled = false;
				document.getElementById("yes32").selected = true;
				document.getElementById("no32").disabled = false;
				document.getElementById("unknown32").disabled = true;
			}
		}

		function change4(a) {
			var x = (a.value || a.options[a.selectedIndex].value);
			if (x == "No") {
				document.getElementById("yes42").disabled = true;
				document.getElementById("no42").disabled = true;
				document.getElementById("unknown42").selected = true;
			} else if (x == "Yes") {
				document.getElementById("yes42").disabled = false;
				document.getElementById("yes42").selected = true;
				document.getElementById("no42").disabled = false;
				document.getElementById("unknown42").disabled = true;
			}
		}

		function change5(a) {
			var x = (a.value || a.options[a.selectedIndex].value);
			if (x == "No") {
				document.getElementById("yes52").disabled = true;
				document.getElementById("no52").disabled = true;
				document.getElementById("unknown52").selected = true;
			} else if (x == "Yes") {
				document.getElementById("yes52").disabled = false;
				document.getElementById("yes52").selected = true;
				document.getElementById("no52").disabled = false;
				document.getElementById("unknown52").disabled = true;
			}
		}

		function change6(a) {
			var x = (a.value || a.options[a.selectedIndex].value);
			if (x == "No") {
				document.getElementById("yes62").disabled = true;
				document.getElementById("no62").disabled = true;
				document.getElementById("unknown62").selected = true;
			} else if (x == "Yes") {
				document.getElementById("yes62").disabled = false;
				document.getElementById("yes62").selected = true;
				document.getElementById("no62").disabled = false;
				document.getElementById("unknown62").disabled = true;
			}
		}

		function change7(a) {
			var x = (a.value || a.options[a.selectedIndex].value);
			if (x == "No") {
				document.getElementById("yes72").disabled = true;
				document.getElementById("no72").disabled = true;
				document.getElementById("unknown72").selected = true;
			} else if (x == "Yes") {
				document.getElementById("yes72").disabled = false;
				document.getElementById("yes72").selected = true;
				document.getElementById("no72").disabled = false;
				document.getElementById("unknown72").disabled = true;
			}
		}

		function change8(a) {
			var x = (a.value || a.options[a.selectedIndex].value);
			if (x == "No") {
				document.getElementById("yes82").disabled = true;
				document.getElementById("no82").disabled = true;
				document.getElementById("unknown82").selected = true;
			} else if (x == "Yes") {
				document.getElementById("yes82").disabled = false;
				document.getElementById("yes82").selected = true;
				document.getElementById("no82").disabled = false;
				document.getElementById("unknown82").disabled = true;
			}
		}

		function change9(a) {
			var x = (a.value || a.options[a.selectedIndex].value);
			if (x == "No") {
				document.getElementById("yes92").disabled = true;
				document.getElementById("no92").disabled = true;
				document.getElementById("unknown92").selected = true;
			} else if (x == "Yes") {
				document.getElementById("yes92").disabled = false;
				document.getElementById("yes92").selected = true;
				document.getElementById("no92").disabled = false;
				document.getElementById("unknown92").disabled = true;
			}
		}
	</script>

</body>
</html>