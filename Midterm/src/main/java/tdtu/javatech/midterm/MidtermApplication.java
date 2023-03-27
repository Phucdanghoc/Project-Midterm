package tdtu.javatech.midterm;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tdtu.javatech.midterm.Model.*;
import tdtu.javatech.midterm.Repository.Person.AdminRepository;
import tdtu.javatech.midterm.Repository.Product.BrandRepository;
import tdtu.javatech.midterm.Repository.Product.CategoryRepository;
import tdtu.javatech.midterm.Repository.Product.ColorRepository;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;

import java.util.Optional;

@SpringBootApplication
public class MidtermApplication implements CommandLineRunner {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ColorRepository colorRepository;

    @Autowired
    private BrandRepository brandRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private AdminRepository adminRepository;
    public static void main(String[] args) {
        SpringApplication.run(MidtermApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
//            Admin admin = new Admin();
//            admin.setName("Admin");
//            admin.setUsername("Admin");
//            admin.setPassword("admin");
//            adminRepository.save(admin);
//        colorRepository.findById(1).ifPresent(System.out::println);
//
//        colorRepository.save(new Color("Yellow"));
//        Color color = new Color();
//        color.setName("Yellow");
//        Brand brand = new Brand(1,"GUCCI","USA","112120");
////        brandRepository.save(brand);
//        Category category = new Category(1,"Shirt");

//        categoryRepository.save(category );
//        Product product = new Product(2,"Yellow Shirt",15.5,"This is price",4.5,"src.img",color,category,brand);
//        productRepository.save(product);

    }
}
