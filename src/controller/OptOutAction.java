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
				
				request.setAttribute("companyName", company.getCompanyName());
				request.setAttribute("companyUrl", company.getCompanyUrl());
				request.setAttribute("companyPhone", company.getCompanyPhone());
				
				System.out.println("year 1 is " + request.getParameter("year1"));
				company.setYear1((int)request.getAttribute("year1"));
				company.setYear2((int)request.getAttribute("year2"));
				company.setDay((int)request.getAttribute("day"));
				
//				ArrayList<String> limitSharingList = (ArrayList<String>)request.getAttribute("limitSharing");
//				ArrayList<String> limitMarketingList = (ArrayList<String>)request.getAttribute("limitMarketing");
//				company.setLimitSharingList(limitSharingList);
//				company.setLimitMarketingList(limitMarketingList);
				
				request.getSession(false).setAttribute("company", company);
				
				return "3opt-out.jsp";
			} catch (Exception e) {
				errors.add(e.getMessage());
				return "3opt-out.jsp";
			}
		}
	

}
