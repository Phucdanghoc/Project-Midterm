package tdtu.javatech.midterm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tdtu.javatech.midterm.Model.User;
import tdtu.javatech.midterm.Repository.Person.AdminRepository;
import tdtu.javatech.midterm.Repository.Person.UserRepository;
import tdtu.javatech.midterm.Repository.Product.BrandRepository;
import tdtu.javatech.midterm.Repository.Product.CategoryRepository;
import tdtu.javatech.midterm.Repository.Product.ColorRepository;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;
import tdtu.javatech.midterm.Service.ProductService;

@SpringBootApplication
public class MidtermApplication implements CommandLineRunner {
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ColorRepository colorRepository;

    @Autowired
    private BrandRepository brandRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private UserRepository user;
    public static void main(String[] args) {
        SpringApplication.run(MidtermApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
    }
}
