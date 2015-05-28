package controller;

import java.util.ArrayList;
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
			
			request.setAttribute("companyName", company.getCompanyName());
			request.setAttribute("companyUrl", company.getCompanyUrl());
			request.setAttribute("companyPhone", company.getCompanyPhone());
			
//			ArrayList<String> personalInfoList = (ArrayList<String>) request.getAttribute("personalInfo");
//			ArrayList<String> limitList = (ArrayList<String>) request.getAttribute("limit");
//			company.setPersonalInfoList(personalInfoList);
//			company.setLimitList(limitList);
			
			request.getSession(false).setAttribute("company", company);
			
			return "4who we are.jsp";
		} catch (Exception e) {
			//System.out.println("e2 = " + e.toString());
			errors.add(e.getMessage());
			return "4who we are.jsp";
		}
	}
	
	
}
