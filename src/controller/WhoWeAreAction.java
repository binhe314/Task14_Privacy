package controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import databeans.Company;
import model.Model;

public class WhoWeAreAction extends Action{

	public WhoWeAreAction(Model model){
		
	}
	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return "whoWeAre.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		// Set up the request attributes (the errors list and the form bean so
		// we can just return to the jsp with the form if the request isn't
		// correct)
		List<String> errors = new ArrayList<String>();
		request.setAttribute("errors", errors);
		
		try {

			Company company = (Company) request.getSession(false).getAttribute("company");
			String action = (String) request.getParameter("action");

			request.setAttribute("companyName", company.getCompanyName());
			request.setAttribute("companyUrl", company.getCompanyUrl());
			request.setAttribute("companyPhone", company.getCompanyPhone());
			
//			ArrayList<String> personalInfoList = (ArrayList<String>) request.getAttribute("personalInfo");
//			ArrayList<String> limitList = (ArrayList<String>) request.getAttribute("limit");
//			company.setPersonalInfoList(personalInfoList);
//			company.setLimitList(limitList);
			
			String[] selected = request.getParameterValues("personalInfo");

			ArrayList<Boolean> personalInfo = new ArrayList<Boolean>();

			if (Arrays.asList(selected).contains("1")) {

				personalInfo.add(true);

			} else {

				personalInfo.add(false);

			}

			if (Arrays.asList(selected).contains("2")) {

				personalInfo.add(true);

			} else {

				personalInfo.add(false);

			}

			if (Arrays.asList(selected).contains("3")) {

				personalInfo.add(true);

			} else {

				personalInfo.add(false);

			}


			String[] selected2 = request.getParameterValues("limit");

			ArrayList<Boolean> limit = new ArrayList<Boolean>();

			if (Arrays.asList(selected2).contains("1")) {

				limit.add(true);

			} else {

				limit.add(false);

			}

			if (Arrays.asList(selected2).contains("2")) {

				limit.add(true);

			} else {

				limit.add(false);

			}

			if (Arrays.asList(selected2).contains("3")) {

				limit.add(true);

			} else {

				limit.add(false);

			}

			

			company.setPersonalInfo(personalInfo);
			company.setLimit(limit);
			
			request.getSession(false).setAttribute("company", company);
			
			if (action.equals("Previous")) {
				return "3opt-out.jsp";
			} else if (action.equals("Continue")) {
				return "5definition.jsp";
			} else {
				return "4who we are.jsp";
			}

		} catch (Exception e) {
			//System.out.println("e2 = " + e.toString());
			errors.add(e.getMessage());
			return "4who we are.jsp";
		}
	}
	
	
}
