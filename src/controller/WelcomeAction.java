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
			
			//upload file 
			if (request.getParameter("upload") != null) {
				Part filePart;
			    InputStream fileContent = null;
			    
			    try {
					filePart = request.getPart("file");
					fileContent = filePart.getInputStream();
				} catch (IllegalStateException e1) {
					e1.printStackTrace();
				} catch (IOException e1) {
					e1.printStackTrace();
				} catch (ServletException e1) {
					e1.printStackTrace();
				}
				
				try {
					parseXML(fileContent, company);
				} catch (IOException | XMLStreamException e) {
					e.printStackTrace();
				}
				
				session.setAttribute("company", company);
				return "1fact.jsp";
			}
			
			
			// start a new form
			String action = (String) request.getParameter("action");
			if (action != null) {
				if (action.equals("Continue")) {
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

	private static void parseXML(InputStream fileContent, Company company) 
			throws MalformedURLException, IOException, XMLStreamException{
		
		System.out.println("entering parseXML");
		XMLInputFactory xmlInputFactory = XMLInputFactory.newInstance();	
		XMLEventReader xmlEventReader = xmlInputFactory.createXMLEventReader(fileContent);
		
		ArrayList<String> shareOrNot = new ArrayList<String>();
		ArrayList<String> shareLimit = new ArrayList<String>();

		ArrayList<Boolean> limitSharingTable = new ArrayList<Boolean>();
		ArrayList<Boolean> limitMarketingTable = new ArrayList<Boolean>();
		
		ArrayList<Boolean> howCollectTable = new ArrayList<Boolean>();
		ArrayList<Boolean> cannotLimitTable = new ArrayList<Boolean>();
		
		ArrayList<String> affiliateName = new ArrayList<String>();
		ArrayList<String> affiliateUrl = new ArrayList<String>();
		
		while(xmlEventReader.hasNext()) {
			XMLEvent event = xmlEventReader.nextEvent();
			if (event.isStartElement()) {
				StartElement startElement = event.asStartElement();
				String elementName = startElement.getName().getLocalPart();
				
				//parse reason table
				if (elementName.equals("bank")) {
					event = xmlEventReader.nextEvent();
					System.out.println("bank is " + elementName);
					company.setCompanyName(event.asCharacters().getData());					
				} else if (elementName.equals("Url")) {
					event = xmlEventReader.nextEvent();
					company.setCompanyUrl(event.asCharacters().getData());;					
				} else if (elementName.equals("Phone")) {
					event = xmlEventReader.nextEvent();
					company.setCompanyPhone(event.asCharacters().getData());;					
				} else if (elementName.equals("ShareOrNot")) {
					event = xmlEventReader.nextEvent();
					String shareOrNotItem = event.asCharacters().getData();
					shareOrNot.add(shareOrNotItem);
				} else if (elementName.equals("ShareLimit")) {
					event = xmlEventReader.nextEvent();
					String shareLimitItem = event.asCharacters().getData();
					shareLimit.add(shareLimitItem);
				} else if (elementName.equals("LimitSharingCheck")) {
					
				} else if (elementName.equals("LimitMarketingCheck")) {
					
				}
				
			}
			
			if (event.isEndElement()) {
		        EndElement endElement = event.asEndElement();
		        
		        //set back arraylist for Reason page
		        if(endElement.getName().getLocalPart().equals("Reasons")){
                    company.setShareOrNot(shareOrNot);
		        	company.setShareLimit(shareLimit);
                } else if (endElement.getName().getLocalPart().equals("OptOut")) {
                //	company.setLimitSharingTable(limitSharingTable);
                //	company.setLimitMarketingTable(limitMarketingTable);
                }
		    }
		      
		}

	}
}
