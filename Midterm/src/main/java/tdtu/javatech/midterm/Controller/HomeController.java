package tdtu.javatech.midterm.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
    @GetMapping("/index")
    public String ShowHomePage(){
        return "index";
    }
    @GetMapping("/cart")
    public String ShowCart(){
        return "cart";
    }
    @GetMapping("/shop")
    public String Shop(){
        return "shop";
    }
    @GetMapping("/my-account")
    public String Account(){
        return "my-account";
    }
}
