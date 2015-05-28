<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

table {
	width: 75%;
}

th, td {
	padding: 15px;
}

th {
	text-align: left;
}

td.td1 {
	background: -webkit-linear-gradient(top, rgb(255, 255, 255),
		rgb(207, 207, 207));
}

td.td2 {
	background-color: rgb(238, 238, 238);
}

th.th1 {
	background: -webkit-linear-gradient(top, rgb(255, 255, 255),
		rgb(207, 207, 207));
}

p {
	margin-left: 12.6%;
}
</style>
<title>U.S. Consumer Privacy Notice Agreement</title>
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
	<h2 style="margin-left: 12.6%">U.S. Consumer Privacy Notice</h2>
	<hr />
	<table align="center" id="table1">
		<tr>
			<th colspan="2" class="th1"><b>FACTS:</b> What does do with ${company.companyName} your personal information?</th>
		</tr>
		<tr>
			<td class="td2" width="30%"><b>Why?</b></td>
			<td width="70%" id="why">Financial companies choose how they share your personal information. Under federal law, that means personally identifiable information. Federal law gives consumers the right to limit some but not all sharing. Federal law also requires us to tell you how we collect, share, and protect your personal information. Please read this notice carefully to understand what we do.</td>
		</tr>
		<tr>
			<td class="td2"><b>What?</b></td>
			<td id="what">The types of personal information we collect and share depend on the product or service you have with us. <br />
This information can include: <br />
- Social Security number and employment information  <br />
- Account balances, transaction history and credit information <br />
- Assets and investment experience </td>
		</tr>
		<tr>
			<td class="td2"><b>How?</b></td>
			<td id="how">All financial companies need to share customers’ personal information to run their everyday business. In the section below, we list the reasons financial companies can share their customers’ personal information; the reasons ${company.companyName} chooses to share; and whether you can limit this sharing.</td>
		</tr>
	</table>

	<br />

	<table align="center" id="table2">
		<tr>
			<th class="th1"><b>Reasons we can share your personal
					information</b>
			</td>
			<th class="th1"><b>Does ${company.companyName} share?</b>
			</td>
			<th class="th1"><b>Can you limit this sharing?</b>
			</td>
		</tr>
		<tr>
			<td class="td2"><b>For our everyday business purposes</b> - such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus</td>
			<td id="BankShare1">${company.shareOrNot.get(0) }</td>
			<td id="LimitShare1">${company.shareLimit.get(0) }</td>
		</tr>
		<tr>
			<td class="td2"><b>For our marketing purposes</b> - to offer our products and services to you</td>
			<td id="BankShare2">${company.shareOrNot.get(1) }</td>
			<td id="LimitShare2">${company.shareLimit.get(1) }</td>
		</tr>
		<tr>
			<td class="td2"><b>For joint marketing with other financial
					companies</b></td>
			<td id="BankShare3">${company.shareOrNot.get(2) }</td>
			<td id="LimitShare3">${company.shareLimit.get(2) }</td>
		</tr>
		<tr>
			<td class="td2"><b>For our affiliates' everyday business
					purposes</b> - information about your transactions and experiences</td>
			<td id="BankShare4">${company.shareOrNot.get(3) }</td>
			<td id="LimitShare4">${company.shareLimit.get(3) }</td>
		</tr>
		<tr>
			<td class="td2"><b>For our affiliates' everyday business
					purposes</b> - information about your credit worthiness</td>
			<td id="BankShare5">${company.shareOrNot.get(4) }</td>
			<td id="LimitShare5">${company.shareLimit.get(4) }</td>
		</tr>
		<tr>
			<td class="td2"><b>For our affiliates to market to you</b></td>
			<td id="BankShare6">${company.shareOrNot.get(5) }</td>
			<td id="LimitShare6">${company.shareLimit.get(5) }</td>
		</tr>
		<tr>
			<td class="td2"><b>For nonaffiliates to market to you</b> - for all credit card accounts</td>
			<td id="BankShare7">${company.shareOrNot.get(6) }</td>
			<td id="LimitShare7">${company.shareLimit.get(6) }</td>
		</tr>
		<tr>
		<td class="td2"><b>For nonaffiliates to market to you</b> - for accounts and services endorsed by another organization (e.g., debit card co-branded with a baseball team) "Sponsored Accounts"</td>
		<td>${company.shareOrNot.get(7) }</td>
		<td>${company.shareLimit.get(7) }</td>
		</tr>
		<tr>
		<td class="td2"><b>For nonaffiliates to market to you</b> - for accounts other than credit card accounts and Sponsored Accounts, such as insurance, investments, deposit and lending</td>
		<td>${company.shareOrNot.get(8) }</td>
		<td>${company.shareLimit.get(8) }</td>
		</tr>
	</table>

	<br />

	<table align="center" id="table3">
		<tr>
			<td class="td2" width="30%"><b>To limit our sharing</b></td>
			<td width="70%" id="ifLimitShare"></td>
		</tr>
		<tr>
		<td class="td2"> <b>To limit direct marketing</b></td>
		<td></td>
		</tr>
		<tr>
			<td class="td2"><b>Questions?</b></td>
			<td id="questions">Call ${company.companyPhone } or go to ${company.companyUrl }</td>
		</tr>
	</table>

	<br />

	<p>
		<b>Page 2</b>
	</p>

	<table align="center" id="table4">
		<tr>
			<th colspan="2" class="th1"><b>Who we are</b></th>
		</tr>
		<tr>
			<td class="td2" width="30%"><b>Who is providing this notice?</b></td>
			<td width="70%" id="whoProviding">${company.companyName }</td>
		</tr>
	</table>

	<br />

	<table align="center" id="table5">
		<tr>
			<th colspan="2" class="th1"><b>What we do</b></th>
		</tr>
		<tr>
			<td class="td2" width="30%"><b>How does ${company.companyName} protect my
					personal information?</b></td>
			<td width="70%" id="howProtect">
			To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings. For more information, visit ${company.companyUrl }. 
			</td>
		</tr>
		<tr>
			<td class="td2" width="30%"><b>How does ${company.companyName} collect my
					personal information?</b></td>
			<td width="70%" id="howCollect"></td>
		</tr>
		<tr>
			<td class="td2" width="30%"><b>Why can't I limit all
					sharing?</b></td>
			<td width="70%" id="whyLimit"></td>
		</tr>
		<tr>
			<td class="td2" width="30%"><b>What happens when I limit
					sharing for an account I hold jointly with someone else?</b></td>
			<td width="70%" id="whatHappens"></td>
		</tr>
	</table>

	<br />

	<table align="center" id="table6">
		<tr>
			<th colspan="2" class="th1"><b>Definitions</b></th>
		</tr>
		<tr>
			<td class="td2" width="30%"><b>Affiliates</b></td>
			<td width="70%" id="affiliates"></td>
		</tr>
		<tr>
			<td class="td2" width="30%"><b>Nonaffiliates</b></td>
			<td width="70%" id="nonaffiliates"></td>
		</tr>
		<tr>
			<td class="td2" width="30%"><b>Joint marketing</b></td>
			<td width="70%" id="jointMarketing"></td>
		</tr>
	</table>

	<br />

	<table align="center" id="table7">
		<tr>
			<th class="th1"><b>Other important information</b></th>
		</tr>
		<tr>
			<td id="otherInformation"></td>
		</tr>
	</table>

	<br />

	<div style="text-align: center">

			<button type="submit" class="btn btn-default"> <a href="task14.html" id="DownloadLink" onclick="exportXML()" download="task14.xml">Download
			As XML</a></button>
			<button type="submit" class="btn btn-default"> <a href="task14.html" id="DownloadLink" download="agreement.html">Download
			As HTML</a></button>
		<button type="submit" class="btn btn-default">Export As PDF</button>
	</div>

	
	<br />
	<br />



	<script>
		function exportXML() {
			var xml = [ '<?xml version="1.0" encoding="ISO-8859-1"?>','<document>', '' ]
					.join('\r\n');

			 var table = document.getElementsByTagName("table");
			for (i = 0; i < table.length; i++) {
				var th = table[i].getElementsByTagName("th");
				var tr = table[i].getElementsByTagName("tr");
				var td = table[i].getElementsByTagName("td");
				xml += [ '<table>', '' ].join('\r\n');

				if (th.length != 0) {
					for (m = 0; m < th.length; m++) {
						xml += [ '<thead>' + th[m].textContent + '</thead>', '' ].join('\r\n');
					}

					for (j = 1; j < tr.length; j++) {
						xml += [ '<tr>', '' ].join('\r\n');
						for (k = 0; k < td.length/tr.length; k++) {
							 xml += [ '<td>' + table[i].rows[j].cells[k].textContent + '</td>', '' ].join('\r\n'); 
						}
						xml += [ '</tr>', '' ].join('\r\n');
					}
				} else {
					for (j = 0; j < tr.length; j++) {
						xml += [ '<tr>', '' ].join('\r\n');
						for (k = 0; k < (td.length / tr.length); k++) {
							xml += [ '<td>' + table[i].rows[j].cells[k].textContent + '</td>', '' ].join('\r\n'); 
						}
						xml += [ '</tr>', '' ].join('\r\n');
					}
				}

				xml += [ '</table>', '' ].join('\r\n');
			} 

		 	xml += '</document>';

			var newXml = new Blob([xml],{type:'text/plain'});
			
			document.getElementById("DownloadLink").setAttribute('href',window.URL.createObjectURL(newXml));
			document.getElementById("DownloadLink").setAttribute('download','task14.xml');
		
		
		}
		
		
	</script>

</body>
</html>