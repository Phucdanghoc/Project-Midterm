package tdtu.javatech.midterm.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;

@Controller
public class ProductController {
    public static Logger logger = LoggerFactory.getLogger(ProductRepository.class);
    @Autowired
    private ProductRepository productRepository;
    @GetMapping("users/product")
    public String getID(@RequestParam String id, Model model){
        System.out.println(model.toString());
        Product product = productRepository.findById(Integer.parseInt(id)).get();
        model.addAttribute("product",product);
        return  "single";
    }
}
