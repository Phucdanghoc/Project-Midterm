package tdtu.javatech.midterm.Controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import tdtu.javatech.midterm.Repository.ProductRepository;
import tdtu.javatech.midterm.Service.ProductService;



@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private ProductService productService;
    @Autowired
    private ProductRepository productRepository;
    @GetMapping("")
    public String home(Model model, HttpSession request) {
        if (CheckSession(request)){
            return "redirect:login?login_false";
        }
        model.addAttribute("pageTitle", "HomePage");
        model.addAttribute("items",productService.getAll());
        return "index";
    }
    @PostMapping("")
    public String Search(Model model, @RequestParam("key") String key, @RequestParam("type") String type){
        System.out.println(key);
        switch (type){
            case "1":
                model.addAttribute("items",productService.searchByName(key));
                return "index";
            case "2":
                model.addAttribute("items",productService.searchByCategory(key));
                return "index";
            case "3":
                model.addAttribute("items",productService.searchByColor(key));
                return "index";
        }
        model.addAttribute("items",productService.getAll());
        return "index";
    }
    private static boolean CheckSession(HttpSession request){
        return  request.getAttribute("id") == "null" ? true:false;
    }
}
