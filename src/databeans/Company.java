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

	public List<OtherCompany> getAffiliateFinancialCompanies() {
		return affiliateFinancialCompanies;
	}

	public void setAffiliateFinancialCompanies(
			List<OtherCompany> affiliateFinancialCompanies) {
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

	private int year1;
	private int year2;
	private int day;
	
	
	private String generalAffiliates;
	private List<OtherCompany> affiliateFinancialCompanies;
	private String affiliateSeeMoreAt;
	private String nonAffiliates;
	private String jointMarketing;

	public int getYear1() {
		return year1;
	}

	public void setYear1(int year1) {
		this.year1 = year1;
	}

	public int getYear2() {
		return year2;
	}

	public void setYear2(int year2) {
		this.year2 = year2;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
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

}
