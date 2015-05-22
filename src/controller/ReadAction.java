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

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Model;
import model.MyDAOException;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
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
			File file = null;
			int maxFileSize = 5000 * 1024;
			int maxMemSize = 5000 * 1024;

			String filePath = "/Users/LEE45/Documents/apache-tomcat-7.0.56/data/";
			String contentType = request.getContentType();
			if ((contentType.indexOf("multipart/form-data") >= 0)) {
				DiskFileItemFactory factory = new DiskFileItemFactory();
				factory.setSizeThreshold(maxMemSize);
				factory.setRepository(new File("/Users/LEE45/Documents/temp"));
				ServletFileUpload upload = new ServletFileUpload(factory);
				upload.setSizeMax(maxFileSize);
				try {
					List fileItems = upload.parseRequest(request);
					Iterator i = fileItems.iterator();

					while (i.hasNext()) {
						FileItem fi = (FileItem) i.next();
						if (!fi.isFormField()) {

							String fieldName = fi.getFieldName();
							String fileName = fi.getName();
							boolean isInMemory = fi.isInMemory();
							long sizeInBytes = fi.getSize();

							if (fileName.lastIndexOf("\\") >= 0) {
								file = new File(filePath,
										fileName.substring(fileName
												.lastIndexOf("\\")));
							} else {
								file = new File(filePath,
										fileName.substring(fileName
												.lastIndexOf("\\") + 1));
							}
							fi.write(file);

						}
					}

					BufferedReader reader = null;
					reader = new BufferedReader(new FileReader(file));
					String tempString = null;
					while ((tempString = reader.readLine()) != null) {
						// TODO 将内容转化成JSON

						System.out.println(tempString);
					}
					reader.close();

				} catch (Exception ex) {
					System.out.println(ex);
				}
			} else {

				// TODO 加error

			}

			return "index.html";
		}
		if (form.getAction().equals("Login as Employee")) {

		}
		return "login.jsp";
	}
}
