package controller;

import javax.servlet.http.HttpServletRequest;

import form.DataForm;
import model.Model;

public class DownloadAction extends Action {
	
	public DownloadAction(Model model) {

	}

	public String getName() {
		return "download.do";
	}

	public String perform(HttpServletRequest request) {
		
		String action = request.getParameter("action");
		if (action.equals("download")) {
			return "download";
		}
		
		if (action.equals("edit")) {
			return "new-form.jsp";

		}
		
		return "save.do";

	}
	
}
