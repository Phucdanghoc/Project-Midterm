package tdtu.javatech.midterm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tdtu.javatech.midterm.Repository.UserRepository;
import tdtu.javatech.midterm.Repository.BrandRepository;
import tdtu.javatech.midterm.Repository.ColorRepository;
import tdtu.javatech.midterm.Repository.ProductRepository;
import tdtu.javatech.midterm.Service.CartService;
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
    private CartService categoryRepository;
    @Autowired
    private UserRepository user;
    public static void main(String[] args) {
        SpringApplication.run(MidtermApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
//        productRepository.findAllByProductPriceGreaterThan(100.0).forEach(p-> System.out.println(p.getID()));
//        System.out.println(productService.getAll().stream().count());
        System.out.println(categoryRepository.Total(user.findById(1).get())) ;

    }

}
