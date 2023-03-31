package tdtu.javatech.midterm.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import tdtu.javatech.midterm.Service.CartService;

@Controller
public class CartController {
    @Autowired
    private CartService cartService;
    @GetMapping("/cart")
    public String show(Model model){
        model.addAttribute("pageTitle", "HomePage");
        model.addAttribute("items", cartService.getAll());
        return "dashboard";
    }



}
