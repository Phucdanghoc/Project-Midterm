package tdtu.javatech.midterm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tdtu.javatech.midterm.Model.Brand;
import tdtu.javatech.midterm.Model.Category;
import tdtu.javatech.midterm.Model.Color;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.ColorRepository;
import tdtu.javatech.midterm.Repository.ProductRepository;

@SpringBootApplication
public class MidtermApplication implements CommandLineRunner {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ColorRepository colorRepository;
    public static void main(String[] args) {
        SpringApplication.run(MidtermApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        Color color = new Color("pink");
        colorRepository.save(color);

    }
}
