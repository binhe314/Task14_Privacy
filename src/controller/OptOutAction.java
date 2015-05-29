package controller;

import java.util.ArrayList;
import java.util.Arrays;
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
				
				String[] selected = request.getParameterValues("limitSharing");

				ArrayList<Boolean> limitSharing = new ArrayList<Boolean>();

				if (Arrays.asList(selected).contains("1")) {

					limitSharing.add(true);

				} else {

					limitSharing.add(false);

				}

				if (Arrays.asList(selected).contains("2")) {

					limitSharing.add(true);

				} else {

					limitSharing.add(false);

				}

				if (Arrays.asList(selected).contains("3")) {

					limitSharing.add(true);

				} else {

					limitSharing.add(false);

				}

				if (Arrays.asList(selected).contains("4")) {

					limitSharing.add(true);

				} else {

					limitSharing.add(false);

				}

				String[] selected2 = request.getParameterValues("limitMarketing");

				ArrayList<Boolean> limitMarketing = new ArrayList<Boolean>();

				if (Arrays.asList(selected2).contains("1")) {

					limitMarketing.add(true);

				} else {

					limitMarketing.add(false);

				}

				if (Arrays.asList(selected2).contains("2")) {

					limitMarketing.add(true);

				} else {

					limitMarketing.add(false);

				}

				if (Arrays.asList(selected2).contains("3")) {

					limitMarketing.add(true);

				} else {

					limitMarketing.add(false);

				}

				if (Arrays.asList(selected2).contains("4")) {

					limitMarketing.add(true);

				} else {

					limitMarketing.add(false);

				}

				company.setLimitSharing(limitSharing);
				company.setLimitMarketing(limitMarketing);
								
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
