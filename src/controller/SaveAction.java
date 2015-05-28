package controller;

import java.io.FileWriter;
import java.io.IOException;
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
				System.out.println(errors);
				return "new-form.jsp";
			}
			
			request.getSession().setAttribute("form", form);
			request.setAttribute("errors", errors);
			ArrayList<String> q5 = new ArrayList<String>(Arrays.asList(form.getQ5whatData()));
			ArrayList<String> q14 = new ArrayList<String>(Arrays.asList(form.getQ14whatWay()));
			
			request.getSession().setAttribute("q5", q5);
			request.getSession().setAttribute("q14", q14);
			return "result.jsp";
		}

		return "new-form.jsp";

	}
}
