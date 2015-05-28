package controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Model;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.JSONException;
import org.json.JSONObject;
import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import com.google.gson.JsonObject;

import form.DataForm;

public class ReadAction extends Action {

	public ReadAction(Model model) {

	}

	public String getName() {
		return "read.do";
	}

	public String perform(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		File file = null;
		int maxFileSize = 5000 * 1024;
		int maxMemSize = 5000 * 1024;
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(maxMemSize);
		factory.setRepository(new File(Controller.TEMP_PATH));
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
						file = new File(Controller.TEMP_PATH,
								fileName.substring(fileName
										.lastIndexOf("\\")));
					} else {
						file = new File(Controller.TEMP_PATH,
								fileName.substring(fileName
										.lastIndexOf("\\") + 1));
					}
					fi.write(file);
				}
			}

		} catch (Exception ex) {
			System.out.println(ex);
		}

			
		Scanner scanner = null;
		if (file != null) {
			StringBuilder sb = new StringBuilder();
			try {
				scanner = new Scanner(file);
				while (scanner.hasNextLine()) {
					String line = scanner.nextLine();
					sb.append(line);
				}				
			} catch (FileNotFoundException e) {
				System.err.println("Cannot find the file");
			} finally {
				if (scanner != null)
					scanner.close();
			}
			System.out.println(sb.toString());
			
			JSONObject jobject = null;
			try {
				jobject = new JSONObject(sb.toString());
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if (jobject == null) {
				return "index.jsp";
			}
			DataForm form = null;
			try {
				form = generateForm(jobject);
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("form", form);
			return "new-form.jsp";

		}
		
		return "login.jsp";
	}
	
	public static DataForm generateForm(JSONObject jobject) throws JSONException {
		DataForm form = new DataForm();
		form.setName(jobject.optString("name"));
		form.setPhone(jobject.optString("phone"));
		form.setQ3(jobject.optString("q3"));
		form.setWebsite(jobject.optString("website"));
		form.setArray1(jobject.optString("q5"));
		form.setQ6(jobject.optString("q6"));
		form.setQ7(jobject.optString("q7"));
		form.setQ7_1(jobject.optString("q7_1"));
		form.setQ8(jobject.optString("q8"));
		form.setQ8_1(jobject.optString("q8_1"));
		form.setQ8_1_1(jobject.optString("q8_1_1"));
		form.setQ8_2(jobject.optString("q8_2"));
		form.setQ9(jobject.optString("q9"));
		form.setQ9_1(jobject.optString("q9_1"));
		form.setQ9_1_1(jobject.optString("q9_1_1"));
		form.setQ9_2(jobject.optString("q9_2"));
		form.setQ9_2_1(jobject.optString("q9_2_1"));
		form.setQ9_2_1_1(jobject.optString("q9_2_1_1"));
		form.setQ9_2_2(jobject.optString("q9_2_2"));
		form.setQ9_2_2_1(jobject.optString("q9_2_2_1"));
		form.setQ9_3(jobject.optString("q9_3"));
		form.setQ9_4(jobject.optString("q9_4"));
		form.setQ9_5(jobject.optString("q9_5"));
		form.setQ10(jobject.optString("q10"));
		form.setQ10_1_1(jobject.optString("q10_1_1"));
		form.setQ11(jobject.optString("q11"));
		form.setQ12(jobject.optString("q12"));
		form.setQ12_1(jobject.optString("q12_1"));
		form.setQ13(jobject.optString("q13"));
		form.setQ13_1(jobject.optString("q13_1"));
		form.setArray2(jobject.optString("q14whatWay"));
		form.setQ15(jobject.optString("q15"));
		form.setQ15_1(jobject.optString("q15_1"));
		form.setQ16(jobject.optString("q16"));
		form.setQ16_1(jobject.optString("q16_1"));
		form.setQ17(jobject.optString("q17"));
		form.setQ17_1(jobject.optString("q17_1"));
		form.setQ17_2(jobject.optString("q17_2"));
		form.setQ17_3(jobject.optString("q17_3"));
		form.setQ17_3_1(jobject.optString("q17_3_1"));
		form.setQ17_3_2(jobject.optString("q17_3_2"));
		form.setAddress1(jobject.optString("address1"));
		form.setAddress2(jobject.optString("address2"));
		form.setCity(jobject.optString("city"));
		form.setState(jobject.optString("state"));
		form.setZipcode(jobject.optString("zipcode"));
		
		return form;
	}
	
}
