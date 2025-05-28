package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
	
	@Controller
	public class FormController {
	    @RequestMapping("/complex")
	    public String showForm() {
	        return "complexform";
	    }
	    
	    @RequestMapping(path = "/handleform", method = RequestMethod.POST)
	    public String formHandler(@RequestParam("fullName") String name,
	                              @RequestParam("email") String emailid) {
	        System.out.println(name);
	        System.out.println(emailid);
	        return "success";
	    }
}
