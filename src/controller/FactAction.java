package controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import databeans.Company;
import model.Model;

public class FactAction extends Action{

	public FactAction(Model model){
		
	}
	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return "fact.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		Company company = (Company)request.getSession(false).getAttribute("company");
		List<String> errors = new ArrayList<String>();
		request.setAttribute("errors", errors);
		String action = (String) request.getParameter("action");
		String[] shared = request.getParameterValues("checkbox");
		ArrayList<String> sharedList = new ArrayList<String>();
		if (shared != null) {
			for (String s : shared)
				sharedList.add(s);									// sharedInfo
		}
		
		String[] selected = request.getParameterValues("checkbox");

		ArrayList<Boolean> fiveChecks = new ArrayList<Boolean>();
		
		if (Arrays.asList(selected).contains("Income")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Account Balances")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Payment History")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Transaction History")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Transaction or Loss History")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Credit History")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Credit Scores")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Assets")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Investment Experience")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Credit Based Insurance Scores")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Insurance Claim History")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Account Transactions")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Risk Tolerance")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Medical Related Debts")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Credit Card or other debt")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);
		}
		if (Arrays.asList(selected).contains("Mortgage Rates and Payments")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Retirement Assets")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Checking account information")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Employment Information retirement portfolio")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Wire Transfer Instructions")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Medical Information")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Overdraft History")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		if (Arrays.asList(selected).contains("Purchase History")) {

			fiveChecks.add(true);

		} else {

			fiveChecks.add(false);

		}
		
		company.setFiveChecks(fiveChecks);
		
		if(sharedList.size() < 5 || sharedList.size() >5) {
			errors.add("Please select 5 types for personal information");
		}
		
		if (errors.size() != 0) {
			return "1fact.jsp";
		}
		company.setSharedInfo(sharedList);
		request.getSession().setAttribute("company", company);
		
		if (action.equals("Previous")) {
			return "0welcome.jsp";
		} else if (action.equals("Continue")) {
			return "2reason.jsp";
		} else {
			return "1fact.jsp";
		}
	}

}
