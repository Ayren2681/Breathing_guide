package brcontr;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



@Controller
public class brlogin1 {
	
    @RequestMapping("/login")
    public String greeting(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
        model.addAttribute("name", "1233");
        return "/WEB-INF/pages/brlogin.jsp";
    }
    @RequestMapping("/breath")
    public String breath(String name, Model model) {
       
        return "/WEB-INF/pages/breath.jsp";
    }
    @RequestMapping(value="/breath",method=RequestMethod.GET)
    public String breathcustom(@RequestParam(value="custom",  defaultValue="") String bool, Model model) {
    	System.out.println("bool:"+bool);
    	if(bool.equals("Y")){
        	System.out.println(bool);
        return "/WEB-INF/pages/breath1.jsp";
        }else{
        return null;
        }
    }
    
    

	

}