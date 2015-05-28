package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import databeans.Company;
import model.Model;

public class ReasonAction extends Action {
	public ReasonAction(Model model) {

	}

	public String getName() {
		return "reason.do";
	}

	public String perform(HttpServletRequest request) {
		List<String> errors = new ArrayList<String>();
		request.setAttribute("errors", errors);

		try {

			Company company = (Company) request.getSession(false).getAttribute(
					"company");
			String action = (String) request.getParameter("action");

			String[] shareOrNotString = request.getParameterValues("shareOrNot");
			String[] shareLimitString = request.getParameterValues("shareLimit");
			ArrayList<String> shareOrNot = new ArrayList<String>();
			ArrayList<String> shareLimit = new ArrayList<String>();
			for (int i = 0; i < shareOrNotString.length; i++) {
				shareOrNot.add(shareOrNotString[i]);
				shareLimit.add(shareLimitString[i]);
			}
			
			company.setShareOrNot(shareOrNot);
			company.setShareLimit(shareLimit);

			request.getSession(false).setAttribute("company", company);

			if (action.equals("Previous")) {
				return "1fact.jsp";
			} else if (action.equals("Continue")) {
				return "3opt-out.jsp";
			} else {
				return "2reason.jsp";
			}

		} catch (Exception e) {
			errors.add(e.getMessage());
			return "2reason.jsp";
		}

	}

}
