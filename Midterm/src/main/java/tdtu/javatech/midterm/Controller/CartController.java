package tdtu.javatech.midterm.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import tdtu.javatech.midterm.Model.User;
import tdtu.javatech.midterm.Service.CartService;
import tdtu.javatech.midterm.Service.UserService;

@Controller
public class CartController {
    @Autowired
    private CartService cartService;
    @Autowired
    private UserService userService;
    @GetMapping("/cart")
    public String show(Model model, HttpSession request ){
        if (request.getAttribute("id")==null){
            return "redirect:login";
        }
        User user = userService.getById(request.getAttribute("id").toString());
        model.addAttribute("pageTitle", "Cart");
        model.addAttribute("items", cartService.getAll(user));
        model.addAttribute("user",user);
        model.addAttribute("total",cartService.Total(user));
        System.out.println(userService.getById(request.getAttribute("id").toString()).toString());
        return "cart";
    }
    @DeleteMapping("/cart/delete")
    public String delete(@RequestParam("id") String id){
        cartService.Delete(id);
        return "redirect:cart?delete=true";
    }
}
