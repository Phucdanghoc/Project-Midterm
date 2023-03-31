package tdtu.javatech.midterm.Service.Implement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;
import tdtu.javatech.midterm.Service.ProductService;

import java.util.List;

@Service
public class ProductServiceImp implements ProductService {
    @Autowired
    private  ProductRepository productRepository;

    public List<Product> getAll() {
        return productRepository.findAll();
    }

    @Override
    public Product getById(String id) {
        return productRepository.findById(Integer.parseInt(id)).get();
    }
}
