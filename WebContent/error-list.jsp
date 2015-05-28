<%
    java.util.List<String> errors = (java.util.List) request.getAttribute("errors");
	if (errors != null && errors.size() > 0) {
		out.println("<p class=\"alert alert-danger\" role=\"alert\">");
		for (String error : errors) {
			out.println(error+"<br/>");
		}
		out.println("</p>");
	}
%>