package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.lingala.zip4j.core.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.util.Zip4jConstants;
import model.Model;

/**
 * Servlet implementation class Controller
 */

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String HOME;
	static String PATH;
	static String HTML_PATH;
	static String ZIP_PATH;
	static String TEMP_PATH;
	static String CSS_PATH;
	static String time;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void init() throws ServletException {
		Model model = new Model(getServletConfig());
		Action.add(new IndexAction(model));
		Action.add(new SaveAction(model));
		Action.add(new ReadAction(model));
		Action.add(new DownloadAction(model));
		Action.add(new RedirectAction(model));

		HOME = getServletContext().getRealPath("/");
		PATH = HOME + "hi.txt";
		HTML_PATH = HOME + "html.html";
		//CSS_PATH = "/home/ec2-user/assets";
		CSS_PATH = "/assets";

		//CSS_PATH = "/Users/LEE45/git/starbuck1/WebContent/assets";
		ZIP_PATH = HOME;
		TEMP_PATH = HOME;
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

		Date date = Calendar.getInstance().getTime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("MMM-dd-HH:mm:ss");
		time = dateFormat.format(date);

		if (nextPage.equals("save")) {
			response.setHeader("Content-Type", "application/json");
			response.setHeader("content-disposition",
					"attachment;filename=Privacy-Form-" + time);

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


		if (nextPage.equals("download")) {

			CharArrayWriterResponse customResponse = new CharArrayWriterResponse(
					response);
			request.getRequestDispatcher("WEB-INF/download.jsp").forward(
					request, customResponse);
			String resposeString = customResponse.getOutput();

			FileWriter fw = new FileWriter(HTML_PATH);
			fw.write(resposeString.toString());
			fw.close();

			String zipPath = ZIP_PATH + "Privary-Notice-" + time + ".zip";
			System.out.println(zipPath);

			AddFilesToFolderInZip(zipPath);

			// ///////////////////////////////////////////
			response.setHeader("Content-Type", "application/zip");
			response.setHeader("content-disposition",
					"attachment;filename=Privary-Notice-" + time + ".zip");

			InputStream in = null;
			OutputStream out = response.getOutputStream();

			try {
				in = new FileInputStream(zipPath);
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

	public void AddFilesToFolderInZip(String zipString) {
		try {
			ZipFile zipFile = new ZipFile(zipString);

			// Build the list of files to be added in the array list
			ArrayList<File> filesToAdd = new ArrayList<File>();
			filesToAdd.add(new File(HTML_PATH));

			ZipParameters parameters = new ZipParameters();
			parameters.setCompressionMethod(Zip4jConstants.COMP_DEFLATE); // set
																			// compression
																			// method
																			// to
																			// deflate
																			// compression
			parameters.setCompressionLevel(Zip4jConstants.DEFLATE_LEVEL_NORMAL);
			parameters.setRootFolderInZip("Privary Notice-" + time + "/");

			// Now add files to the zip file
			zipFile.addFiles(filesToAdd, parameters);
			zipFile.addFolder(CSS_PATH, parameters);
		} catch (ZipException e) {
			e.printStackTrace();
		}

	}

}
