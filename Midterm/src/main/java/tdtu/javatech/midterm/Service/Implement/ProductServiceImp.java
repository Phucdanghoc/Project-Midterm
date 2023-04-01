package tdtu.javatech.midterm.Service.Implement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Model.Category;
import tdtu.javatech.midterm.Model.Color;
import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Repository.Product.CategoryRepository;
import tdtu.javatech.midterm.Repository.Product.ColorRepository;
import tdtu.javatech.midterm.Repository.Product.ProductRepository;
import tdtu.javatech.midterm.Service.ProductService;

import java.util.List;

@Service
public class ProductServiceImp implements ProductService {
    @Autowired
    private  ProductRepository productRepository;

    @Autowired
    private ColorRepository colorRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    public List<Product> getAll() {
        return productRepository.findAll();
    }

    @Override
    public Product getById(String id) {
        return productRepository.findById(Integer.parseInt(id)).get();
    }

    @Override
    public List<Product> searchByName(String name) {
        return productRepository.findAllByProductNameContainingIgnoreCase(name);
    }

    @Override
    public List<Product> searchByCategory(String category) {
        Category category1 = categoryRepository.findByCategoryName(category);
        return  productRepository.findAllByCategory(category1);
    }

    @Override
    public List<Product> searchByColor(String color) {
        Color color1 = colorRepository.findByColorName(color);
        return productRepository.findProductsByColor(color1);
    }
}
