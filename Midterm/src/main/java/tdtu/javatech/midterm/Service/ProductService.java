package tdtu.javatech.midterm.Service;

import tdtu.javatech.midterm.Model.Product;
import tdtu.javatech.midterm.Service.Implements.ProductServiceImp;

import java.util.List;

public interface ProductService {
    static  ProductService getInstance() {
        return new ProductServiceImp();
    }
    List<Product> getAll();
}
