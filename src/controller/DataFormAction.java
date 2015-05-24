package controller;

import javax.servlet.http.HttpServletRequest;

import model.Model;

import org.mybeans.form.FormBeanFactory;

import form.DataForm;

public class DataFormAction extends Action{
	private FormBeanFactory<DataForm> formBeanFactory = FormBeanFactory
			.getInstance(DataForm.class);

	public DataFormAction(Model model) {

	}

	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String perform(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return "dataForm.do";
	}
}
