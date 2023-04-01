package tdtu.javatech.midterm.Service;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Model.Product;

import java.util.List;



public interface ProductService {
    List<Product> getAll();
    Product getById(String id);


    List<Product> searchByName(String name);
    List<Product> searchByCategory(String category);
    List<Product> searchByColor(String color);
}
