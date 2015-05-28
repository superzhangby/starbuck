package controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import form.DataForm;
import model.Model;

public class RedirectAction extends Action {

	public RedirectAction(Model model) {

	}

	public String getName() { return "redirect.do"; }
    
    public String perform(HttpServletRequest request) {
            
        HttpSession session = request.getSession();
        DataForm form = (DataForm) session.getAttribute("form");
        String url = form.getWebsite();
       
               
        if (url != null) {
        	String begin = url.substring(0,7);
        	String begin2 = url.substring(0,8);
     		if ((!begin.equals("http://")) && (!begin2.equals("https://"))) {
     			url = "http://" + url;			
     		}
        	return url;
        }
        
        return "result.jsp";
        
    }
}
