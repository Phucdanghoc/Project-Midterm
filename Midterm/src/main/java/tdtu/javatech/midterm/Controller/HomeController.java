package tdtu.javatech.midterm.Controller;

import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
    public static HomeController getInstance() {
        return new HomeController();
    }
    private ProductRepository repository;
    @GetMapping("/index")
    public String hone(Model model){
        List<Product> items = new ArrayList<>();
        repository.findAll().forEach(product -> items.add(product));
        model.addAttribute("pageTitle", "HomePage");
        model.addAttribute("items", items);
        return "index";
    }
}
