package databeans;

import java.util.*;



public class Company {
	
	private String companyName;
	private String companyUrl;
	private String companyPhone;
	
	private String location;
	private ArrayList<String> shareOrNot;
	private ArrayList<String> shareLimit;

	
	
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
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public ArrayList<String> getShareOrNot() {
		return shareOrNot;
	}
	public void setShareOrNot(ArrayList<String> shareOrNot) {
		this.shareOrNot = shareOrNot;
	}
	public ArrayList<String> getShareLimit() {
		return shareLimit;
	}
	public void setShareLimit(ArrayList<String> shareLimit) {
		this.shareLimit = shareLimit;
	}

}
