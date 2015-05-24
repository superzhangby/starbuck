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
		DataForm form = null;
		try {
			form = formBeanFactory.create(request);
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		request.setAttribute("form", form);

		if (!form.isPresent()) {
			return "index.jsp";
		}

		List<String> errors = new ArrayList<String>();
		errors.addAll(form.getValidationErrors());

		if (errors.size() > 0) {
			request.setAttribute("errors", errors);
			return "login.jsp";
		}

		if (form.getAction().equals("save")) {
			JsonObject obj = form.getJson();
			System.out.println(obj.toString());

			try {
				FileWriter fw = new FileWriter(Controller.PATH);
				fw.write(obj.toString());
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		return "save";

	}
}
