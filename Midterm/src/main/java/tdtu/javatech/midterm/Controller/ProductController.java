package tdtu.javatech.midterm.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import tdtu.javatech.midterm.Model.Cart;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Model.User;
import tdtu.javatech.midterm.Repository.Action.CartRepository;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;
import tdtu.javatech.midterm.Service.CartService;
import tdtu.javatech.midterm.Service.ProductService;
import tdtu.javatech.midterm.Service.UserService;

import java.util.Date;

@Controller
@RequestMapping("/")
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private CartService cartService;

    @Autowired
    private UserService userService;

    @GetMapping("product")
    public String getID(@RequestParam String id, Model model){

        model.addAttribute("product", productService.getById(id));
        model.addAttribute("cart",new Cart());

        return  "single";
    }
    @PostMapping("product")
    public  String  AddIntoCart(@ModelAttribute("cart") Cart cart, @ModelAttribute("ID") String ID,HttpServletRequest request){

        cart.setProducts(productService.getById(ID));
        cart.setUser(userService.getById((String) request.getSession().getAttribute("id")));
        cart.setCreated_at(String.valueOf(new Date()));
        cartService.Save(cart);
        return "dashboard";
    }
}
