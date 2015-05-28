package controller;

import javax.servlet.http.HttpServletRequest;

import model.Model;

public class DownloadAction extends Action {
	
	public DownloadAction(Model model) {

	}

	public String getName() {
		return "download.do";
	}

	public String perform(HttpServletRequest request) {
		return "download";

	}
	
}
