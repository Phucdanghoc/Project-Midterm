package tdtu.javatech.midterm.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;

import java.util.List;

@Service
public class ProductServiceImp implements ProductService {

    public static ProductServiceImp getInstance() {
        return new ProductServiceImp();
    }
    private static ProductRepository productRepository;
    @Override
    public List<Product> getAll() {
        return productRepository.findAll();
    }
}
