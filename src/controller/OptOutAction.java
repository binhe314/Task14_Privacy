package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.Model;

import org.mybeans.form.FormBeanFactory;

import databeans.User;

public class OptOutAction extends Action {
//		private FormBeanFactory<FavoriteForm> formBeanFactory = FormBeanFactory
//				.getInstance(FavoriteForm.class);
//
//		private FavoriteDAO favoriteDAO;
//		private UserDAO userDAO;

		public OptOutAction(Model model) {
//			favoriteDAO = model.getFavoriteDAO();
//			userDAO = model.getUserDAO();
		}

		public String getName() {
			return "optOut.do";
		}

		public String perform(HttpServletRequest request) {
			// Set up the request attributes (the errors list and the form bean so
			// we can just return to the jsp with the form if the request isn't
			// correct)
			List<String> errors = new ArrayList<String>();
			request.setAttribute("errors", errors);
			
			try {

//				request.setAttribute("userList", userDAO.getUsers());

//				User user = (User) request.getSession(false).getAttribute("user");
				
//				Favorite[] favoriteList = favoriteDAO.getItems(user.getUserId());
//				request.setAttribute("favoriteList", favoriteList);
				
				String institutionName = request.getParameter("institutionName");
				String tele = request.getParameter("tele");
				String link = request.getParameter("link");

				return "3opt-out.jsp";
			} catch (Exception e) {
				//System.out.println("e2 = " + e.toString());
				errors.add(e.getMessage());
				return "3opt-out.jsp";
			}
		}
	

}
