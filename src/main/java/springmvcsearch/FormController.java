package springmvcsearch;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FormController {

    @RequestMapping("/complex")
    public String showForm(Model model) {
        model.addAttribute("student", new Student());
        return "complexform";
    }

    @RequestMapping(value = "/handleform", method = RequestMethod.POST)
    public String handleForm(@ModelAttribute("student") Student student) {
        System.out.println(student);
        System.out.println(student.getAddress());
        return "success";
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, false));
    }
}
