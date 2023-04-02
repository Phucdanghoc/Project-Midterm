package tdtu.javatech.midterm.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import tdtu.javatech.midterm.Model.Category;
import tdtu.javatech.midterm.Model.Color;
import tdtu.javatech.midterm.Model.Product;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product,Integer> {
    List<Product> findProductsByColor(Color color);
    List<Product> findAllByCategory(Category category);
    List<Product> findAllByProductNameContainingIgnoreCase(String name);
    List<Product> findAllByProductPriceGreaterThan(Double price);


}
