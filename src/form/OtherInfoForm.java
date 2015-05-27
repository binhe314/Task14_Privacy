package form;

import java.util.ArrayList;
import java.util.List;

import org.mybeans.form.FormBean;

public class OtherInfoForm extends FormBean {
	private String location;

	
	public String getLocation()   { return location;   }
	

	
	public void setLocation(String s)   { location   = s; }




	   public List<String> getValidationErrors() {
	        List<String> errors = new ArrayList<String>();

	        if (location == null || location.length() == 0) {
	        	errors.add("choose your location");
	        	}
	    

	        if (errors.size() > 0) return errors;

	        
	        return errors;
   }
}
