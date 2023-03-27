package tdtu.javatech.midterm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tdtu.javatech.midterm.Model.Brand;
import tdtu.javatech.midterm.Model.Category;
import tdtu.javatech.midterm.Model.Color;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.Product.BrandRepository;
import tdtu.javatech.midterm.Repository.Product.CategoryRepository;
import tdtu.javatech.midterm.Repository.Product.ColorRepository;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;

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
    public static void main(String[] args) {
        SpringApplication.run(MidtermApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        Color color = new Color("red");
//        colorRepository.save(color);
        Brand brand = new Brand("GUCCI","USA","112120");
//        brandRepository.save(brand);
        Category category = new Category("Shirt");
//        categoryRepository.save(category );

        Product product = new Product("Red Shirt",15.5,"This is price",4.5,"src.img");
        product.setBrand(brand);
        product.setCategory(category);
        product.setColor(color);
        productRepository.save(product);

    }
}
