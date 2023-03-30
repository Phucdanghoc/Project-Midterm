package tdtu.javatech.midterm.Controller;

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

import java.util.Date;

@Controller
@RequestMapping("/")
public class ProductController {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private CartRepository cartRepository;
    @GetMapping("product")
    public String getID(@RequestParam String id, Model model){

        System.out.println(model.toString());
        Product product = productRepository.findById(Integer.parseInt(id)).get();

        System.out.println(product.getIMG_SRC());
        model.addAttribute("product",product);

        Cart cart = new Cart();
        model.addAttribute("cart",cart);
        return  "single";
    }
    @PostMapping("product")
    public  String  AddIntoCart(@ModelAttribute("cart") Cart cart,@ModelAttribute("ID") String ID){
        System.out.println(ID);
        User user = new User();
        user.setID(1);
        cart.setProducts(productRepository.findById(Integer.parseInt(ID)).get());
        cart.setUser(user);
        cart.setCreated_at(String.valueOf(new Date()));

        cartRepository.save(cart);

        return "dashboard";
    }
}
