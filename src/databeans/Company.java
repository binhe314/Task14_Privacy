package databeans;

import java.util.ArrayList;
import java.util.List;

public class Company {

	public String getGeneralAffiliates() {
		return generalAffiliates;
	}

	public void setGeneralAffiliates(String generalAffiliates) {
		this.generalAffiliates = generalAffiliates;
	}

	public List<String> getAffiliateFinancialCompanies() {
		return affiliateFinancialCompanies;
	}

	public void setAffiliateFinancialCompanies(
			ArrayList<String> affiliateFinancialCompanies) {
		this.affiliateFinancialCompanies = affiliateFinancialCompanies;
	}

	public String getAffiliateSeeMoreAt() {
		return affiliateSeeMoreAt;
	}

	public void setAffiliateSeeMoreAt(String affiliateSeeMoreAt) {
		this.affiliateSeeMoreAt = affiliateSeeMoreAt;
	}

	public String getNonAffiliates() {
		return nonAffiliates;
	}

	public void setNonAffiliates(String nonAffiliates) {
		this.nonAffiliates = nonAffiliates;
	}

	public String getJointMarketing() {
		return jointMarketing;
	}

	public void setJointMarketing(String jointMarketing) {
		this.jointMarketing = jointMarketing;
	}

	private String companyName;
	private String companyUrl;
	private String companyPhone;

	private String location;
	private ArrayList<String> shareOrNot;
	private ArrayList<String> shareLimit;

	private String year1;
	private String year2;
	private String day;
	
	
	private String generalAffiliates;
	private List<String> affiliateFinancialCompanies;
	private String affiliateSeeMoreAt;
	private String nonAffiliates;
	private String jointMarketing;
	
	private ArrayList<Boolean> limitSharing;
	private ArrayList<Boolean> limitMarketing;
	private ArrayList<Boolean> personalInfo;
	private ArrayList<Boolean> limit;
	
	private ArrayList<String> sharedInfo;

	public ArrayList<String> getSharedInfo() {
		return sharedInfo;
	}

	public void setSharedInfo(ArrayList<String> sharedInfo) {
		this.sharedInfo = sharedInfo;
	}

private ArrayList<Boolean> fiveChecks;
	
	public ArrayList<Boolean> getFiveChecks() {
		return fiveChecks;
	}

	public void setFiveChecks(ArrayList<Boolean> fiveChecks) {
		this.fiveChecks = fiveChecks;
	}

	public String getYear1() {
		return year1;
	}

	public void setYear1(String year1) {
		this.year1 = year1;
	}

	public String getYear2() {
		return year2;
	}

	public void setYear2(String year2) {
		this.year2 = year2;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

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
	public ArrayList<Boolean> getLimitSharing() {
		return limitSharing;
	}

	public void setLimitSharing(ArrayList<Boolean> limitSharing) {
		this.limitSharing = limitSharing;
	}
	
	public ArrayList<Boolean> getLimitMarketing() {
		return limitMarketing;
	}

	public void setLimitMarketing(ArrayList<Boolean> limitMarketing) {
		this.limitMarketing = limitMarketing;
	}
	
	public ArrayList<Boolean> getPersonalInfo() {
		return personalInfo;
	}

	public void setPersonalInfo(ArrayList<Boolean> personalInfo) {
		this.personalInfo = personalInfo;
	}
	public ArrayList<Boolean> getLimit() {
		return limit;
	}

	public void setLimit(ArrayList<Boolean> limit) {
		this.limit = limit;
	}

}
