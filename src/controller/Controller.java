package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Model;

/**
 * Servlet implementation class Controller
 */

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final String PATH = "/Users/LEE45/Desktop/eBusiness/Task_14/hi.txt";
	static final String HTML_PATH = "/Users/LEE45/Desktop/eBusiness/Task_14/html.html";
	static final String TEMP_PATH = "/Users/LEE45/Desktop/eBusiness/Task_14/";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void init() throws ServletException {
		Model model = new Model(getServletConfig());
		Action.add(new IndexAction(model));
		Action.add(new SaveAction(model));
		Action.add(new ReadAction(model));
		Action.add(new HTMLAction(model));
		Action.add(new HTMLPageAction(model));


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String nextPage = performTheAction(request);
		sendToNextPage(nextPage, request, response);
	}

	private String performTheAction(HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		String servletPath = request.getServletPath();
		String action = getActionName(servletPath);

		return Action.perform(action, request);
	}

	private void sendToNextPage(String nextPage, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		if (nextPage == null) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND,
					request.getServletPath());
			return;
		}

		if (nextPage.equals("save")) {

			Date date = Calendar.getInstance().getTime();
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"MMM-dd-HH:mm:ss");
			String time = dateFormat.format(date);
			response.setHeader("Content-Type", "application/json");
			response.setHeader("content-disposition",
					"attachment;filename=Privacy-Form-" + time );

			InputStream in = null;
			OutputStream out = response.getOutputStream();

			try {
				in = new FileInputStream(PATH);
				int len = 0;
				byte[] buffer = new byte[1024];

				while ((len = in.read(buffer)) > 0) {
					out.write(buffer, 0, len);
				}

			} catch (Exception e) {
				throw new RuntimeException(e);
			} finally {
				if (in != null) {
					try {
						in.close();
					} catch (Exception e) {
						throw new RuntimeException(e);
					}

				}
			}

			out.close();
			// response.sendRedirect("save.do?saveok=ok");

			return;
		}

		if (nextPage.equals("html")) {

			Date date = Calendar.getInstance().getTime();
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"MMM-dd-HH:mm:ss");
			String time = dateFormat.format(date);
			response.setHeader("Content-Type", "text/html");
			response.setHeader("content-disposition",
					"attachment;filename=Privacy-HTML-" + time + ".html");

			InputStream in = null;
			OutputStream out = response.getOutputStream();

			try {
				in = new FileInputStream(HTML_PATH);
				int len = 0;
				byte[] buffer = new byte[1024];

				while ((len = in.read(buffer)) > 0) {
					out.write(buffer, 0, len);
				}

			} catch (Exception e) {
				throw new RuntimeException(e);
			} finally {
				if (in != null) {
					try {
						in.close();
					} catch (Exception e) {
						throw new RuntimeException(e);
					}

				}
			}

			out.close();
			// response.sendRedirect("save.do?saveok=ok");

			return;
		}

		if (nextPage.endsWith(".do")) {
			response.sendRedirect(nextPage);
			return;
		}

		if (nextPage.endsWith(".jsp")) {
			RequestDispatcher d = request.getRequestDispatcher("WEB-INF/"
					+ nextPage);
			d.forward(request, response);
			return;
		}
		response.sendRedirect(nextPage);
	}

	private String getActionName(String path) {
		int slash = path.lastIndexOf('/');
		return path.substring(slash + 1);
	}
}
