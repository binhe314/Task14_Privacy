package controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;

import model.Model;

import org.mybeans.form.FormBeanFactory;

import databeans.Company;
import form.WelcomeForm;

public class WelcomeAction extends Action {

	private FormBeanFactory<WelcomeForm> formBeanFactory = FormBeanFactory
			.getInstance(WelcomeForm.class);

	public WelcomeAction(Model model) {
	}

	public String getName() {
		return "welcome.do";
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
			
			// start a new form
			String action = (String) request.getParameter("action");
			if (action != null) {
				if (action.equals("Continue")) {
					System.out.println("entering continue");
					WelcomeForm form = formBeanFactory.create(request);
					
					errors.addAll(form.getValidationErrors());
					
					if (errors.size() != 0) {
						return "0welcome.jsp";
					}
					company.setCompanyName(form.getCompanyName());
					company.setCompanyUrl(form.getCompanyUrl());
					company.setCompanyPhone(form.getCompanyPhone());
					session.setAttribute("company", company);
					return "1fact.jsp";
				}
			}
			return "0welcome.jsp";
		} catch (Exception e) {
			// System.out.println("e2 = " + e.toString());
			errors.add(e.getMessage());
			return "0welcome.jsp";
		}
	}

}
