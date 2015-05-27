package controller;

import javax.servlet.http.HttpServletRequest;

import model.Model;

public class WhoWeAreAction extends Action{

	public WhoWeAreAction(Model model){
		
	}
	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return "whoWeAre.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return "4Who we are.jsp";
	}

}
