package tdtu.javatech.midterm.Controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;
import tdtu.javatech.midterm.Service.ProductService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private ProductService productService;
    @GetMapping("/")
    public String home(Model model,HttpServletRequest request){

        if (!CheckSession(request)){
            return "redirect:login";
        }

        model.addAttribute("pageTitle", "HomePage");
        model.addAttribute("items", productService.getAll());
        return "index";
    }
    @PostMapping("/")
    public String Search(Model model, @ModelAttribute("key") String key){
        
    }
    private static boolean CheckSession(HttpServletRequest request){
        return  request.getSession().getAttribute("id").equals("null") ? false:true;
    }
}
