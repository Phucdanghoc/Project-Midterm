package tdtu.javatech.midterm.Service;

import org.springframework.stereotype.Repository;
import tdtu.javatech.midterm.Model.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAll();

}
