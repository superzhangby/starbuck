package controller;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import model.Model;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.jsoup.Jsoup;
import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;






import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;

import form.DataForm;

public class HTMLAction extends Action {
	private FormBeanFactory<DataForm> formBeanFactory = FormBeanFactory
			.getInstance(DataForm.class);

	public HTMLAction(Model model) {

	}

	public String getName() {
		return "HTML.do";
	}

	public String perform(HttpServletRequest request) {

		DataForm form = null;
		try {
			form = formBeanFactory.create(request);

		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		request.getSession().setAttribute("form", form);
		request.getSession().getAttribute("form");
		if (!form.isPresent()) {
			return "new-form.jsp";
		}

		/*
		 * List<String> errors = new ArrayList<String>();
		 * errors.addAll(form.getValidationErrors());
		 * 
		 * if (errors.size() > 0) { request.setAttribute("errors", errors);
		 * return "new-form.jsp"; }
		 */
		if (form.getAction().equals("Save Application")) {
			System.out.println("into HTML");

			try {
				
				// String html =
				// Jsoup.connect("http://localhost:8080/Privacy/HTMLPage.do").get().html();

				// System.out.println(html.toString());
				String url = "http://localhost:8080/Privacy/HTMLPage.do";

				URL url1 =  new URL(url);
				//url1.openConnection().get;
				BufferedReader reader = new BufferedReader(new InputStreamReader(
						url1.openStream()));
				ArrayList<String> result = new ArrayList<String>();

				/*

		        CloseableHttpClient client = HttpClients.createDefault();
				HttpGet urlRequest = new HttpGet(url);

				HttpResponse response = client.execute(urlRequest);
				BufferedReader reader = new BufferedReader(new InputStreamReader(
				response.getEntity().getContent()));
*/
				String line;
				while ((line = reader.readLine()) != null) {
					result.add(line);
				}
				if (reader != null) {
					reader.close();
				}


				//String response = run(url);

				FileWriter fw = new FileWriter(Controller.HTML_PATH);
				fw.write(request.toString());
				fw.close();

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return "html";

	}

	public static String run(String url) throws IOException {
		OkHttpClient client = new OkHttpClient();
		Request request = new Request.Builder().url(url).build();
		Response response = client.newCall(request).execute();
		ResponseBody resBody = response.body();
		// return response.toString();
		return resBody.toString();
	}
}
