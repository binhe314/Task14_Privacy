package controller;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.mybeans.form.FileProperty;
import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import databeans.Company;
import form.uploadForm;
import model.Model;

public class UploadAction extends Action {
	private FormBeanFactory<uploadForm> formBeanFactory = FormBeanFactory.getInstance(uploadForm.class);

	public UploadAction(Model model) {
    	
	}
	
	public String getName() { return "upload.do"; }
	public String perform(HttpServletRequest request) {
		
		HttpSession session = request.getSession(true);

		try {

			uploadForm form = formBeanFactory.create(request);
			FileProperty fileProp = form.getFile();
			byte[] fileByte = fileProp.getBytes();
			String test = new String(fileByte);
			System.out.println(test);
			
			InputStream fileStream = new ByteArrayInputStream(fileByte);
			
			Company company = parseXML(fileStream);
			System.out.println("from company, limitSharing[0] is " + company.getLimitSharing().toString() );

			session.setAttribute("company", company);
			
		} catch (FormBeanException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (XMLStreamException e) {
			e.printStackTrace();
		}
		return "1fact.jsp";
	}
	
	private static Company parseXML(InputStream itemStream) 
			throws MalformedURLException, IOException, XMLStreamException{
	
		XMLInputFactory xmlInputFactory = XMLInputFactory.newInstance();	
		XMLEventReader xmlEventReader = xmlInputFactory.createXMLEventReader(itemStream);
		
		Company company = new Company();
		
		ArrayList<Boolean> checkList = new ArrayList<Boolean>();
		ArrayList<String> shareOrNot = new ArrayList<String>();
		ArrayList<String> shareLimit = new ArrayList<String>();
		
		while(xmlEventReader.hasNext()) {
			XMLEvent event = xmlEventReader.nextEvent();
			if (event.isStartElement()) {
				StartElement startElement = event.asStartElement();
				String elementName = startElement.getName().getLocalPart();
				
				//parse reason table
				if (elementName.equals("bank")) {
					event = xmlEventReader.nextEvent();
	//				String test = xmlEventReader.getElementText() + "11";
	//				System.out.println("test is " + test);
					System.out.println("bank is " + event.asCharacters().getData());
					if (event.asCharacters().getData() != null) 
						company.setCompanyName(event.asCharacters().getData());					
				} else if (elementName.equals("Url")) {
					event = xmlEventReader.nextEvent();
					System.out.println("Url is " + event.asCharacters().getData());
					if (event.asCharacters().getData() != null) 
						company.setCompanyUrl(event.asCharacters().getData());;					
				} else if (elementName.equals("Phone")) {
					event = xmlEventReader.nextEvent();
					System.out.println("Phone is " + event.asCharacters().getData());

					if (event.asCharacters().getData() != null) 
						company.setCompanyPhone(event.asCharacters().getData());;					
				} else if (elementName.equals("ShareOrNot")) {
					event = xmlEventReader.nextEvent();
					String item = event.asCharacters().getData();
					System.out.println("shareOrNot item is " + item);
					if (item != null)
						shareOrNot.add(item);
				} else if (elementName.equals("ShareLimit")) {
					event = xmlEventReader.nextEvent();
					String item = event.asCharacters().getData();
					if (item != null)
						shareLimit.add(item);
				} else if (elementName.equals("day")) {
					event = xmlEventReader.nextEvent();
					if (event.asCharacters().getData() != null)
						company.setDay(event.asCharacters().getData());			
				} else if (elementName.equals("year1")) {
					event = xmlEventReader.nextEvent();
					if (event.asCharacters().getData() != null) 
						company.setYear1(event.asCharacters().getData());					
				} else if (elementName.equals("year2")) {
					event = xmlEventReader.nextEvent();
					if (event.asCharacters().getData() != null) 
						company.setYear2(event.asCharacters().getData());					
				} else if (elementName.equals("Nonaffiliates")) {
					event = xmlEventReader.nextEvent();
					if (event.asCharacters().getData() != null) 
						company.setNonAffiliates(event.asCharacters().getData());					
				} else if (elementName.equals("Jointmarketing")) {
					event = xmlEventReader.nextEvent();
					if (event.asCharacters().getData() != null) 
						company.setJointMarketing(event.asCharacters().getData());					
				} else if (elementName.equals("Checkbox")) {
					event = xmlEventReader.nextEvent();
					String item = event.asCharacters().getData();
					if (item.equals("true")) {
						checkList.add(true);
					} else {
						checkList.add(false);
					}
				} else if (elementName.equals("5check")) {
					event = xmlEventReader.nextEvent();
					String item = event.asCharacters().getData();
					if (item.equals("true")) {
						checkList.add(true);
					} else {
						checkList.add(false);
					}
				} else if (elementName.equals("Details")) {
					event = xmlEventReader.nextEvent();
					if (event.asCharacters().getData() != null) 
						company.setLocation(event.asCharacters().getData());
				}
				
			}
			
			if (event.isEndElement()) {
		        EndElement endElement = event.asEndElement();
		        
		        //set back arraylist for Reason page
		        if(endElement.getName().getLocalPart().equals("Reasons")){
		        	for (int i = 0; i < shareOrNot.size(); i++) {
		        		System.out.println("shareOrNot " + i+ " is " + shareOrNot.get(i));
		        		System.out.println("shareLimit" + i+ " is " + shareLimit.get(i));

		        	}	        	
                    company.setShareOrNot(shareOrNot);
		        	company.setShareLimit(shareLimit);
                } else if (endElement.getName().getLocalPart().equals("Fact")) {
                	company.setFiveChecks(checkList);
                	for (int i = 0; i < checkList.size(); i++) {
		        		System.out.println("Fact checkList " + i+ " is " + checkList.get(i));
		
		        	}
                	checkList.clear();
                } else if (endElement.getName().getLocalPart().equals("LimitShare")) {
                	company.setLimitSharing(checkList);
                	for (int i = 0; i < checkList.size(); i++) {
		        		System.out.println("Limist Share checkList " + i+ " is " + company.getLimitSharing().get(i));
		
		        	}
                	checkList.clear();
                } else if (endElement.getName().getLocalPart().equals("LimitMarket")) {
                	company.setLimitMarketing(checkList);
                	for (int i = 0; i < checkList.size(); i++) {
		        		System.out.println("Limit Market checkList " + i+ " is " + company.getLimitMarketing().get(i));
		
		        	}
                	checkList.clear();
                } else if (endElement.getName().getLocalPart().equals("collect")) {
                	company.setPersonalInfo(checkList);
                	checkList.clear();
                } else if (endElement.getName().getLocalPart().equals("cantShare")) {
                	company.setPersonalInfo(checkList);
                	checkList.clear();
                } 
		    }
			
			
			
		      
		}
		
		return company;

	} 
}