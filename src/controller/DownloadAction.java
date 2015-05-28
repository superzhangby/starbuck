package controller;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import model.Model;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;


import form.DataForm;

public class DownloadAction extends Action {
	private FormBeanFactory<DataForm> formBeanFactory = FormBeanFactory
			.getInstance(DataForm.class);

	public DownloadAction(Model model) {

	}

	public String getName() {
		return "download.do";
	}

	public String perform(HttpServletRequest request) {
		
		DataForm form = null;
		try {
			form = formBeanFactory.create(request);
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
	
		request.getSession().setAttribute("form", form);
		
		
		Date date = Calendar.getInstance().getTime();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MMM-dd-HH:mm:ss");
		String time = dateFormat.format(date);
		request.getSession().setAttribute("time", time);

		

		if (!form.isPresent()) {
			return "new-form.jsp";
		}
		
		/*
		List<String> errors = new ArrayList<String>();
		errors.addAll(form.getValidationErrors());

		if (errors.size() > 0) {
			request.setAttribute("errors", errors);
			return "new-form.jsp";
		}
		

		if (form.getAction().equals("Save Application")) {
			System.out.println("into HTML");

			try {
				String html = Jsoup.connect("http://localhost:8080/Privacy/HTML.do").get().html();
			
				System.out.println(html);		
			
					FileWriter fw = new FileWriter(Controller.HTML_PATH);
					fw.write(html);
					fw.close();
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		*/
		return "download";

	}
	
}