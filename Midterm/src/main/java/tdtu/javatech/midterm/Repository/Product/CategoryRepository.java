package tdtu.javatech.midterm.Repository.Product;

import org.springframework.data.repository.CrudRepository;
import tdtu.javatech.midterm.Model.Category;

public interface CategoryRepository extends CrudRepository<Category,Integer> {
}
