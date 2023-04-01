package tdtu.javatech.midterm.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("logout")
public class LogoutController {
    @GetMapping("")
    public String Logout(HttpSession request){
        request.removeAttribute("id");
        request.invalidate();

        return "redirect:/";
    }
}
