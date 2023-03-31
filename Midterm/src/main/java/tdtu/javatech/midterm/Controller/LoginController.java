package tdtu.javatech.midterm.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import tdtu.javatech.midterm.Model.User;
import tdtu.javatech.midterm.Service.UserService;

@Controller
public class LoginController {


    @Autowired
    private UserService userService;
    @GetMapping("login")
    public String Show(Model model){

        model.addAttribute("user",new User());
        return "login";
    }
    @PostMapping("login")
    public String Login(@ModelAttribute("user") User user,HttpServletRequest request){
        User userCheck = userService.Check(user);
        HttpSession session = request.getSession();
        if (userCheck!=null){
            System.out.println("ok");
            session.setAttribute("id",userCheck.getID());
            return "redirect:/";
        }
        else {
            session.setAttribute("id","null");
            return  "register";
        }

    }
}
