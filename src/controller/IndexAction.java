
package controller;



import javax.servlet.http.HttpServletRequest;
import model.Model;



public class IndexAction extends Action{
	
	
	public IndexAction(Model model) {

	}
	
	public String getName() {
		return "index.do";
	}
	
	public String perform(HttpServletRequest request) {

		return "index.jsp";
	}
}
