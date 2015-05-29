package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Model;

import org.mybeans.form.FormBeanFactory;

import databeans.Company;
import databeans.OtherCompany;
import form.WelcomeForm;

public class Definition extends Action {

	private FormBeanFactory<WelcomeForm> formBeanFactory = FormBeanFactory
			.getInstance(WelcomeForm.class);


	public Definition(Model model) {
	}

	public String getName() {
		return "definition.do";
	}

	public String perform(HttpServletRequest request) {
		// Set up the request attributes (the errors list and the form bean so
		// we can just return to the jsp with the form if the request isn't
		// correct)
		List<String> errors = new ArrayList<String>();
		request.setAttribute("errors", errors);

		try {
			HttpSession session = request.getSession(true);
			Company company = (Company) session.getAttribute("company");
			String action = (String) request.getParameter("action");
			
			String generalAffiliates = request.getParameter("generalAffiliates");
			String affiliateSeeMoreAt = request.getParameter("affiliateSeeMoreAt");
			String[] affiliateList = request.getParameterValues("affiliateList");

			ArrayList<String> affiliateFinancialCompanies = new ArrayList<String>();
			for (int i = 0; i < affiliateList.length; i++) {
				affiliateFinancialCompanies.add(affiliateList[i]);
			}
			
			
            String nonAffiliates = request.getParameter("nonAffiliates");
			String jointMarketing = request.getParameter("jointMarketing");
			
			company.setGeneralAffiliates(generalAffiliates);
			company.setAffiliateSeeMoreAt(affiliateSeeMoreAt);
			company.setAffiliateFinancialCompanies(affiliateFinancialCompanies);
			company.setNonAffiliates(nonAffiliates);
			company.setJointMarketing(jointMarketing);
			
			
			request.getSession(false).setAttribute("company", company);

			
			if (action.equals("Previous")) {
				return "4who we are.jsp";
			} else if (action.equals("Continue")) {
				return "otherInfo.jsp";
			} else {
				return "5definition.jsp";
			}
			
		} catch (Exception e) {
			// System.out.println("e2 = " + e.toString());
			errors.add(e.getMessage());
			return "5definition.jsp";
		}
	}

}
