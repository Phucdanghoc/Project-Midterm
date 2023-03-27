package tdtu.javatech.midterm.Repository.Product;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import tdtu.javatech.midterm.Model.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product,Integer> {
}
