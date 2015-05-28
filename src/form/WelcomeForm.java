package form;

import java.util.ArrayList;
import java.util.List;

import org.mybeans.form.FormBean;

public class WelcomeForm extends FormBean {

	private String companyName;
	private String companyUrl;
	private String companyPhone;

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyUrl() {
		return companyUrl;
	}

	public void setCompanyUrl(String companyUrl) {
		this.companyUrl = companyUrl;
	}

	public String getCompanyPhone() {
		return companyPhone;
	}

	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}

	public List<String> getValidationErrors() {
		List<String> errors = new ArrayList<String>();

		if (companyName == null || companyName.length() == 0) {
			errors.add("add the name of your company");
		}
		
		if (companyUrl == null || companyUrl.length() == 0) {
			errors.add("add the website of your company");
		}
		
		if (companyPhone == null || companyPhone.length() == 0) {
			errors.add("add the contact number of your company");
		}
		

		if (errors.size() > 0)
			return errors;

		return errors;
	}
}
