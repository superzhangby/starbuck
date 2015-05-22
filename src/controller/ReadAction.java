/*
 *  Team 14 Infinity
 *  Task 7
 *  CMU - eBiz
 *
 * Carnegie Finance Service 
 * Author: Xiaodong Zhou (AndrewID: xiaodonz) 
 * Date: Jan. 18th, 2015
 * Copyright(C) 2015 All rights reserved.  
 */
package controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Model;
import model.MyDAOException;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import databean.CustomerBean;
import databean.EmployeeBean;
import form.LoginForm;

public class ReadAction extends Action {
	private FormBeanFactory<LoginForm> formBeanFactory = FormBeanFactory
			.getInstance(LoginForm.class);

	public ReadAction(Model model) {

	}

	public String getName() {
		return "read.do";
	}

	public String perform(HttpServletRequest request) {
		LoginForm form = null;
		try {
			form = formBeanFactory.create(request);
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		request.setAttribute("form", form);

		HttpSession session = request.getSession(true);

		if (session.getAttribute("user") != null) {
			return "homepage.jsp";
		}

		if (!form.isPresent()) {
			return "login.jsp";
		}

		List<String> errors = new ArrayList<String>();
		errors.addAll(form.getValidationErrors());

		if (errors.size() > 0) {
			request.setAttribute("errors", errors);
			return "login.jsp";
		}

		if (form.getAction().equals("readin")) {
			
			
			
			return "index.html";
		}
		if (form.getAction().equals("Login as Employee")) {
			
		}
		return "login.jsp";
	}
}
