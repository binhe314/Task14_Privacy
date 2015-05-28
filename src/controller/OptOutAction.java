package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.Model;

import org.mybeans.form.FormBeanFactory;

import databeans.Company;
import databeans.User;

public class OptOutAction extends Action {
		public OptOutAction(Model model) {

		}

		public String getName() {
			return "optOut.do";
		}

		public String perform(HttpServletRequest request) {
			
			List<String> errors = new ArrayList<String>();
			request.setAttribute("errors", errors);
			
			try {

				Company company = (Company) request.getSession(false).getAttribute("company");
				String action = (String) request.getParameter("action");

				request.setAttribute("companyName", company.getCompanyName());
				request.setAttribute("companyUrl", company.getCompanyUrl());
				request.setAttribute("companyPhone", company.getCompanyPhone());
				
				company.setYear1(request.getParameter("year1"));
				company.setYear2(request.getParameter("year2"));
				company.setDay(request.getParameter("day"));
				
//				ArrayList<String> limitSharingList = (ArrayList<String>)request.getAttribute("limitSharing");
//				ArrayList<String> limitMarketingList = (ArrayList<String>)request.getAttribute("limitMarketing");
//				company.setLimitSharingList(limitSharingList);
//				company.setLimitMarketingList(limitMarketingList);
								
				request.getSession(false).setAttribute("company", company);
				
				if (action.equals("Previous")) {
					return "2reason.jsp";
				} else if (action.equals("Continue")) {
					return "4who we are.jsp";
				} else {
					return "3opt-out.jsp";
				}
			} catch (Exception e) {
				errors.add(e.getMessage());
				return "3opt-out.jsp";
			}
		}
	

}
