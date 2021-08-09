package parkanthony;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String home() {
		return "index.jsp";
	}
	@RequestMapping("/code")
	public String code() {
		return "login.jsp";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@RequestParam(value="password") String password,RedirectAttributes redirectAttributes) {
		if (password.equals("bushido")) {
			return "redirect:/code";
		} else {

			redirectAttributes.addFlashAttribute("error","WRONG CODE");
			return "redirect:/";
		}
	}
//	public String flashMessages(RedirectAttributes redirectAttributes) {
//		redirectAttributes.addFlashAttribute("error", "WRONG CODE");
//		return "redirect:/";
//	}
	
}
