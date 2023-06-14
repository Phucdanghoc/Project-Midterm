package tdtu.javatech.midterm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tdtu.javatech.midterm.Repository.UserRepository;
import tdtu.javatech.midterm.Repository.ProductRepository;


@SpringBootApplication
public class MidtermApplication implements CommandLineRunner {

    @Autowired
    private ProductRepository productRepository;


    @Autowired
    private UserRepository user;
    public static void main(String[] args) {
        SpringApplication.run(MidtermApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
//
       productRepository.findAll().forEach(p-> System.out.println(p.toString()));
    }

}
