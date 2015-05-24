package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

		HttpSession session = request.getSession(true);

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
			JsonObject jobject = new JsonObject();
			jobject.addProperty("name", form.getName());
			jobject.addProperty("phone", form.getPhone());
			jobject.addProperty("q3", form.getQ3());
			jobject.addProperty("website", form.getWebsite());
			jobject.addProperty("q5", form.getQ5());
			System.out.println(jobject.toString());

			try {
				FileWriter fw = new FileWriter(
						"/Users/Bingyu/Desktop/temp/test.txt");
				fw.write(jobject.toString());
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			

//	        File file = new File("/Users/Bingyu/Desktop/temp/test.txt");
//	        //如果文件不存在
//	        if(!file.exists()){
//	            return "index.jsp";
//	        }
//	        
//	        //处理文件名
//	        String realname = "test.txt";
//	        //设置响应头，控制浏览器下载该文件
//	        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(realname, "UTF-8"));
//	        //读取要下载的文件，保存到文件输入流
//	        FileInputStream in;
//			try {
//				in = new FileInputStream("/Users/Bingyu/Desktop/temp/test.txt");
//			} catch (FileNotFoundException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//	        //创建输出流
//	        OutputStream out = response.getOutputStream();//创建缓冲区
//	        byte buffer[] = new byte[1024];
//	        int len = 0;
//	        //循环将输入流中的内容读取到缓冲区当中
//	        while((len=in.read(buffer))>0){
//	            //输出缓冲区的内容到浏览器，实现文件下载
//	            out.write(buffer, 0, len);
//	        }
//	        //关闭文件输入流
//	        in.close();
//	        //关闭输出流
//	        out.close();
	    }
				
		return "index.jsp";

	}
}
