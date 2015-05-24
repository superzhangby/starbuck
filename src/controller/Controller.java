/*
/*
 *  Team 14 Infinity
 *  Task 7
 *  CMU - eBiz
 *
 * Name: Dean Wen
 * Date: 1/16/2015
 */
package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Model;
import databean.CustomerBean;
import databean.EmployeeBean;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void init() throws ServletException {
		Model model = new Model(getServletConfig());
		Action.add(new LoginAction(model));
		Action.add(new SaveAction(model));

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
			String path = "/Users/LEE45/Desktop/eBusiness/Task_14/hi.txt";
			// String path =
			// this.getServletContext().getRealPath("/Users/LEE45/Desktop/eBusiness/Task_14/hi.txt");
			// String filename = path.substring(path.lastIndexOf("\\") + 1);

			response.setHeader("content-disposition", "attachment;filename=HTML_Form");

			InputStream in = null;
			OutputStream out = response.getOutputStream();

			try {
				in = new FileInputStream(path);
				int len = 0;
				byte[] buffer = new byte[1024];
				// out = response.getOutputStream();
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
			
			response.sendRedirect("index.jsp");
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
