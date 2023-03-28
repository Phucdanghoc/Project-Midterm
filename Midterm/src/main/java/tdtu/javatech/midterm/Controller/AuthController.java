package tdtu.javatech.midterm.Controller;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Model.User;
import tdtu.javatech.midterm.Model.UserDTO;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;
import tdtu.javatech.midterm.Service.ProductService;
import tdtu.javatech.midterm.Service.UserService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AuthController {

    private UserService userService;
    @Autowired
    private ProductRepository repository;

    public AuthController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/login")
    public String login(){
       return  "login";
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model){
        // create model object to store form data
        User user = new User();
        model.addAttribute("user", user);
        return "register";
    }

    @PostMapping("/register/save")
    public String registration(@Valid @ModelAttribute("user") UserDTO userDto,
                               BindingResult result,
                               Model model){
        User existingUser = userService.findByEmail(userDto.getEmail());

        if(existingUser != null && existingUser.getEmail() != null && !existingUser.getEmail().isEmpty()){
            result.rejectValue("email", null,
                    "There is already an account registered with the same email");
        }

        if(result.hasErrors()){
            model.addAttribute("user", userDto);
            return "/register";
        }

        userService.saveUser(userDto);
        return "redirect:/register?success";
    }

    // handler method to handle list of users


    @GetMapping("/users")
    public String listRegisteredUsers(Model model){
        List<UserDTO> users = userService.findAllUsers();
        model.addAttribute("users", users);
        List<Product> items = ProductService.getInstance().getAll();
        model.addAttribute("pageTitle", "HomePage");
        model.addAttribute("items", items);
        return "index";
    }

}
