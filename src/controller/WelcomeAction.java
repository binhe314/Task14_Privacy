package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.Model;
import databeans.User;

public class WelcomeAction extends Action {

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
				
				request.setAttribute("company", );

				User user = (User) request.getSession(false).getAttribute("user");
				Favorite[] favoriteList = favoriteDAO.getItems(user.getUserId());
				request.setAttribute("favoriteList", favoriteList);

				return "favorite.jsp";
			} catch (Exception e) {
				//System.out.println("e2 = " + e.toString());
				errors.add(e.getMessage());
				return "favorite.jsp";
			}
		}
	

}
