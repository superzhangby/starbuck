package controller;

import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import model.Model;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import com.google.gson.JsonObject;

import form.DataForm;

public class SaveAction extends Action {
	private FormBeanFactory<DataForm> formBeanFactory = FormBeanFactory
			.getInstance(DataForm.class);

	public SaveAction(Model model) {

	}

	public String getName() {
		return "save.do";
	}

	public String perform(HttpServletRequest request) {
		/*
		 * if (request.getAttribute("saveok") == null){
		 * System.out.println("not save yet"); } else {
		 * System.out.println("Yeah we save"); }
		 */
		DataForm form = null;
		try {
			form = formBeanFactory.create(request);
			form.setArray1();
			form.setArray2();
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		// request.setAttribute("form", form);

		if (!form.isPresent()) {
			System.out.println("Yeah no form");
			return "new-form.jsp";
		}

		if (form.getAction().equals("Save Application")) {
			JsonObject obj = form.getJson();
			System.out.println(obj.toString());

			try {
				FileWriter fw = new FileWriter(Controller.PATH);
				fw.write(obj.toString());
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return "save";
		}

		if (form.getAction().equals("Complete")) {

			List<String> errors = new ArrayList<String>();
			errors.addAll(form.getValidationErrors());

			if (errors.size() > 0) {
				request.setAttribute("form", form);
				request.setAttribute("errors", errors);
				return "new-form.jsp";
			}
			
			request.getSession().setAttribute("form", form);
			request.setAttribute("errors", errors);
			ArrayList<String> q5 = new ArrayList<String>(Arrays.asList(form.getQ5whatData()));
			ArrayList<String> q14 = new ArrayList<String>(Arrays.asList(form.getQ14whatWay()));
			
			Date date = Calendar.getInstance().getTime();
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MMM");
			String time = dateFormat.format(date);
			request.getSession().setAttribute("time", time);
			
			String q9 = form.getQ9();
			String q9_1 = form.getQ9_1();
			String q9_2 = form.getQ9_2();
			String q9_3 = form.getQ9_3();
			String q9_4 = form.getQ9_4();
			
		
			boolean flag = true;
			boolean flag9192 = false;
			boolean flag95 = false;
			if (q9.equals("no")) {
				flag = false;
			} 
			
			else if (q9_1.equals("no") && q9_2.equals("no")) {
				flag = false;
				flag9192 = true;
			}
			else if (q9_1.equals("yes") || q9_2.equals("yes")) {
				flag95 = true;
			}
			else if (q9_3.equals("no") || q9_4.equals("yes")) {
				flag = false;
			}
			request.getSession().setAttribute("flag", flag);
			request.getSession().setAttribute("flag95", flag95);
			request.getSession().setAttribute("flag9192", flag9192);
			System.out.println(form.getArray1());
			
			return "result.jsp";
		}

		return "new-form.jsp";

	}
}
