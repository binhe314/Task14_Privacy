package controller;


import java.util.ArrayList;
import java.util.List;
import java.lang.String;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Model;

import org.genericdao.RollbackException;
import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import form.OtherInfoForm;


public class OtherInfoAction extends Action {
	private FormBeanFactory<OtherInfoForm> formBeanFactory = FormBeanFactory.getInstance(OtherInfoForm.class);
	


	public String getName() { return "otherInfo.do"; }
    
    public String perform(HttpServletRequest request) {

        try {
		
	        
	        // Load the form parameters into a form bean
	        OtherInfoForm form = formBeanFactory.create(request);
	        request.setAttribute("form",form);

	        if (!form.isPresent()) {
	            return "otherInfo.jsp";
	        }
	
			String location = (String) request.getParameter("location");
			System.out.println(location);
			if(location=="Yes"){
				return "otherInfo2.jsp";
			}else{
	
	      
	        return "otherInfo.jsp";
			}
        } catch (FormBeanException e) {
        	return "otherInfo.jsp";
        }
    }
}
