package controller;

import java.util.ArrayList;

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
		String action = (String) request.getParameter("action");
		String[] shared = request.getParameterValues("checkbox");
		ArrayList<String> sharedList = new ArrayList<String>();
		if (shared != null) {
			for (String s : shared)
				sharedList.add(s);									// sharedInfo
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
