package tdtu.javatech.midterm.Service.Implements;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;
import tdtu.javatech.midterm.Service.ProductService;

import java.util.List;

@Controller
public class ProductServiceImp implements ProductService {
    @Autowired
    private ProductRepository productRepository;
    @Override
    public List<Product> getAll() {
        return productRepository.findAll();
    }
}
