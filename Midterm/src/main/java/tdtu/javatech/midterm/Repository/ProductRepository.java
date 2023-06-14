package tdtu.javatech.midterm.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tdtu.javatech.midterm.Model.Category;
import tdtu.javatech.midterm.Model.Product;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product,Integer> {



}
